package org.fosu.workflow.service.impl;

import org.activiti.engine.HistoryService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.history.HistoricProcessInstance;
import org.activiti.engine.history.HistoricTaskInstance;
import org.activiti.engine.history.HistoricTaskInstanceQuery;
import org.apache.commons.lang3.StringUtils;
import org.fosu.workflow.req.TaskREQ;
import org.fosu.workflow.service.CompleteTaskService;
import org.fosu.workflow.utils.DateUtils;
import org.fosu.workflow.utils.Result;
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
    public Result findCompleteTask(TaskREQ req) {
        // 办理人（当前用户）
        String assignee = UserUtils.getUsername();
        HistoricTaskInstanceQuery query =
                historyService.createHistoricTaskInstanceQuery()
                        .taskAssignee(assignee)
                        .orderByTaskCreateTime()
                        .desc()
                        .finished();// 已办任务
        if(StringUtils.isNotEmpty(req.getTaskName())) {
            query.taskNameLike("%" + req.getTaskName() + "%");
        }
        // 分页查询
        List<HistoricTaskInstance> taskList =
                query.listPage(req.getFirstResult(), req.getSize());
        // 用于前端显示页面，总记录数
        long total = query.count();
        List<Map<String, Object>> records = taskList.stream().map(task ->
        {
            Map<String, Object> map = new HashMap<>();
            map.put("taskId", task.getId()); // 任务id
            map.put("taskName", task.getName()); // 任务名称
            map.put("taskStartTime",
                    DateUtils.format(task.getStartTime())); // 任务的开始时间
            map.put("taskEndTime", DateUtils.format(task.getEndTime()));
            // 任务的结束时间
            map.put("taskAssignee", task.getAssignee()); // 任务办理人
            map.put("processInstanceId", task.getProcessInstanceId());
            // 流程实例id
            map.put("processDefinitionId",
                    task.getProcessDefinitionId()); // 流程定义id
            // 查询流程实例
            HistoricProcessInstance historicProcessInstance =
                    historyService.createHistoricProcessInstanceQuery()
                            .processInstanceId(task.getProcessInstanceId()).singleResult();
            map.put("processName",
                    historicProcessInstance.getProcessDefinitionName()); // 流程名称
            map.put("version",
                    historicProcessInstance.getProcessDefinitionVersion()); // 版本号
            map.put("proposer",
                    historicProcessInstance.getStartUserId()); // 流程发起人
            map.put("businessKey",
                    historicProcessInstance.getBusinessKey()); // 业务唯一标识
            return map;
        }).collect(Collectors.toList());
        // 返回数据封装
        Map<String, Object> result = new HashMap<>();
        result.put("total", total);
        result.put("records", records);
        return Result.ok("查询成功", result);
    }
}