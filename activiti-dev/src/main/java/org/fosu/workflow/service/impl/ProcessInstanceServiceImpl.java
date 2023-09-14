package org.fosu.workflow.service.impl;

import com.baomidou.mybatisplus.core.toolkit.CollectionUtils;
import org.activiti.bpmn.model.BpmnModel;
import org.activiti.engine.history.HistoricActivityInstance;
import org.activiti.engine.history.HistoricProcessInstance;
import org.activiti.engine.history.HistoricTaskInstance;
import org.activiti.engine.impl.identity.Authentication;
import org.activiti.engine.runtime.Execution;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Comment;
import org.activiti.engine.task.Task;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.StringUtils;
import org.fosu.workflow.activiti.image.CustomProcessDiagramGenerator;
import org.fosu.workflow.entities.ProcessConfig;
import org.fosu.workflow.enums.BusinessStatusEnum;
import org.fosu.workflow.req.StartREQ;
import org.fosu.workflow.service.BusinessStatusService;
import org.fosu.workflow.service.ProcessConfigService;
import org.fosu.workflow.service.ProcessInstanceService;
import org.fosu.workflow.utils.DateUtils;
import org.fosu.workflow.utils.Result;
import org.fosu.workflow.utils.UserUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Service
public class ProcessInstanceServiceImpl extends ActivitiService implements ProcessInstanceService {
    @Autowired
    private ProcessConfigService processConfigService;
    @Autowired
    private BusinessStatusService businessStatusService;

    /**
     * 通过流程实例id获取申请表单
     */
    @Override
    public Result getFormNameByProcInstId(String procInstId) {
        // 通过历史流程实例查询，因为如果流程实例全部审批完后，正在运行的流程实例数据会被删除，只有历史中有
        HistoricProcessInstance historicProcessInstance = historyService.createHistoricProcessInstanceQuery()
                .includeProcessVariables()  // 查询流程变量
                .processInstanceId(procInstId).singleResult();

        // 再获取流程实例中的流程变量(启动流程实例时设置了)
        return Result.ok(historicProcessInstance.getProcessVariables().get("formName"));
    }

    /**
     * 获取流程实例审批历史图
     */
    @Override
    public void getHistoryProcessImage(String procInstId, HttpServletResponse response) {
        InputStream inputStream = null;
        try {
            // 1.查询流程实例历史数据
            HistoricProcessInstance instance = historyService.createHistoricProcessInstanceQuery()
                    .processInstanceId(procInstId).singleResult();

            // 2. 查询流程中已执行的节点，按时开始时间降序排列
            List<HistoricActivityInstance> historicActivityInstanceList = historyService.createHistoricActivityInstanceQuery()
                    .processInstanceId(procInstId)
                    .orderByHistoricActivityInstanceStartTime().desc()
                    .list();

            // 3. 单独的提取高亮节点id ( 绿色）
            List<String> highLightedActivityIdList =
                    historicActivityInstanceList.stream()
                            .map(HistoricActivityInstance::getActivityId).collect(Collectors.toList());

            // 4. 正在执行的节点 （红色）
            List<Execution> runningActivityInstanceList = runtimeService.createExecutionQuery()
                    .processInstanceId(procInstId).list();

            List<String> runningActivityIdList = new ArrayList<>();
            for (Execution execution : runningActivityInstanceList) {
                if (StringUtils.isNotEmpty(execution.getActivityId())) {
                    runningActivityIdList.add(execution.getActivityId());
                }
            }

            // 获取流程定义Model对象
            BpmnModel bpmnModel = repositoryService.getBpmnModel(instance.getProcessDefinitionId());

            // 实例化流程图生成器
            CustomProcessDiagramGenerator generator = new CustomProcessDiagramGenerator();
            // 获取高亮连线id
            List<String> highLightedFlows = generator.getHighLightedFlows(bpmnModel, historicActivityInstanceList);
            // 生成历史流程图
            inputStream = generator.generateDiagramCustom(bpmnModel, highLightedActivityIdList,
                    runningActivityIdList, highLightedFlows,
                    "宋体", "微软雅黑", "黑体");

            // 响应相关图片
            response.setContentType("image/svg+xml");
            byte[] bytes = IOUtils.toByteArray(inputStream);
            ServletOutputStream outputStream = response.getOutputStream();
            outputStream.write(bytes);
            outputStream.flush();
            outputStream.close();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    @Override
    public Result startProcess(StartREQ req) {
        // 通过业务申请路由名，获取流程配置
        ProcessConfig processConfig =
                processConfigService.getByBusinessRoute(req.getBusinessRoute());
        if (processConfig == null || StringUtils.isEmpty(processConfig.getProcessKey())) {
            return Result.error("未找到对应流程，请先配置流程");
        }
        // 接收前端传递的流程变量map，其中有申请表单的{entity: {业务表单实体数据}
        Map<String, Object> variables = req.getVariables();
        // 将‘表单组件名’，添加到流程变量中
        variables.put("formName",processConfig.getFormName());
        // 任务办理人
        List<String> assignees=req.getAssignees();
        if(CollectionUtils.isEmpty(assignees)){
            return Result.error("请指定审批人");
        }
        // 启动流程用户(保存在act_hi_procinst的start_user_id字段)
        Authentication.setAuthenticatedUserId(UserUtils.getUsername());
        // 开启流程实例(流程设计图唯一标识key，businessKey业务ID，流程变量)
        ProcessInstance processInstance=
        runtimeService.startProcessInstanceByKey(processConfig.getProcessKey(),req.getBusinessKey(),variables);
        // 设置流程实例名称
        runtimeService.setProcessInstanceName(processInstance.getProcessInstanceId(),
                processInstance.getProcessDefinitionName());
        // 查询当前流程实例的正在运行任务
        List<Task> taskList = taskService.createTaskQuery().processInstanceId(processInstance.getId()).list();
        for(Task task:taskList){
            // 分配第一个任务办理人
            if(assignees.size()==1){
                // 一位办理人，直接作为办理人
                taskService.setAssignee(task.getId(),assignees.get(0));
            }else{
                // 多位办理人，作为候选人
                for(String assignee:assignees){
                    taskService.addCandidateUser(task.getId(),assignee);
                }
            }
        }
        // 更新业务状态表数据(业务key，业务状态，流程实例id)
        return businessStatusService.updateState(req.getBusinessKey(),
                BusinessStatusEnum.PROCESS,processInstance.getProcessInstanceId());
        }

    /** 撤回申请 */
    @Override
    public Result cancel(String businessKey, String procInstId, String
            message) {
        // 撤回，删除当前流程实例
        runtimeService.deleteProcessInstance(procInstId,
                UserUtils.getUsername() + " 主动撤回了当前申请：" + message);
        // 删除历史记录
        historyService.deleteHistoricProcessInstance(procInstId);
        historyService.deleteHistoricTaskInstance(procInstId);
        // 更新业务状态：已撤回
        return businessStatusService.updateState(businessKey, BusinessStatusEnum.CANCEL, "");
    }

    /** 通过流程实例Id查询审批历史信息 */
    @Override
    public Result getHistoryInfoList(String procInstId) {
        // 查询流程人工任务历史数据
        List<HistoricTaskInstance> list =
                historyService.createHistoricTaskInstanceQuery()
                        .processInstanceId(procInstId)
                        .orderByTaskCreateTime().asc()
                        .list();
        List<Map<String, Object>> records =
                list.stream().map(historicTaskInstance -> {
                    Map<String, Object> map = new HashMap<>();
                    map.put("taskId", historicTaskInstance.getId()); // 任务ID
                    map.put("taskName", historicTaskInstance.getName()); // 任务名称
                    map.put("processInstanceId", historicTaskInstance.getProcessInstanceId()); // 流程实例ID
                    map.put("startTime", DateUtils.format(historicTaskInstance.getStartTime())); // 开始时间
                    map.put("endTime", DateUtils.format(historicTaskInstance.getEndTime())); // 结束时间
                    map.put("status", historicTaskInstance.getEndTime() == null ? "待处理" : "已处理"); // 状态
                    map.put("assignee", historicTaskInstance.getAssignee()); //办理人
                // 审批意见：撤回原因为空，查询审批意见
                    String message = historicTaskInstance.getDeleteReason();
                    if (StringUtils.isEmpty(message)) {
                        List<Comment> taskComments =
                                taskService.getTaskComments(historicTaskInstance.getId());
                        message = taskComments.stream()
                                .map(Comment::getFullMessage).collect(Collectors.joining("。 "));
                    }
                    map.put("message", message);
                    return map;
                }).collect(Collectors.toList());
        return Result.ok(records);
    }
}