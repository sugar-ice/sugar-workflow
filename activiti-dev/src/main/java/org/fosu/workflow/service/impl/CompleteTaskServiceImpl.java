package org.fosu.workflow.service.impl;

import org.activiti.engine.HistoryService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.history.HistoricTaskInstance;
import org.activiti.engine.runtime.ProcessInstance;
import org.fosu.workflow.req.TaskREQ;
import org.fosu.workflow.service.CompleteTaskService;
import org.fosu.workflow.utils.DateUtils;
import org.fosu.workflow.utils.UserUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Service
public class CompleteTaskServiceImpl implements CompleteTaskService {
    @Autowired
    HistoryService historyService;

    @Autowired
    RuntimeService runtimeService;

    @Override
    public Map<String, Object> findCompleteTask(TaskREQ req) {
        // 办理人（当前用户）
        String assignee = UserUtils.getUsername();
        List<HistoricTaskInstance> taskList =
                historyService.createHistoricTaskInstanceQuery()
                        .taskAssignee(assignee) // 办理人
                        .orderByTaskCreateTime().desc()
                        .finished()
                        .list();
        // 用于前端显示页面，总记录数
        long total = taskList.size();
        List<Map<String, Object>> records = taskList.stream().map(task ->
        {
            Map<String, Object> map = new HashMap<>();
            map.put("taskId", task.getId()); // 任务ID
            map.put("taskName", task.getName()); // 任务名称
            map.put("taskCreateTime", DateUtils.format(task.getCreateTime())); // 任务的创建时间
            map.put("taskAssignee", task.getAssignee()); // 任务的办理人：为null，说明当前是候选人，不是办理人，要先签收
            map.put("processInstanceId", task.getProcessInstanceId());
            // 流程实例ID
            map.put("executionId", task.getExecutionId()); // 执行对象ID
            map.put("processDefinitionId",
                    task.getProcessDefinitionId()); // 流程定义ID
            // 查询流程实例
            ProcessInstance processInstance = runtimeService.createProcessInstanceQuery()
                    .processInstanceId(task.getProcessInstanceId()).singleResult();
            map.put("businessKey", processInstance.getBusinessKey()); //业务唯一标识
            map.put("proposer", processInstance.getStartUserId()); // 获取发起人
            map.put("processName",
                    processInstance.getProcessDefinitionName()); // 流程名称
            map.put("version",
                    processInstance.getProcessDefinitionVersion()); // 版本号
            return map;
        }).collect(Collectors.toList());
        // 返回数据封装
        Map<String, Object> result = new HashMap<>();
        result.put("total", total);
        result.put("records", records);
        return result;
    }
}