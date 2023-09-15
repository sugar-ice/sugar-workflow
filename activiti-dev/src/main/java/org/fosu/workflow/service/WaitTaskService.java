package org.fosu.workflow.service;

import org.fosu.workflow.req.TaskCompleteREQ;
import org.fosu.workflow.req.TaskREQ;
import org.fosu.workflow.utils.Result;

import java.util.Map;

public interface WaitTaskService {
    /**
     * 查询当前用户是办理人或候选人的待办任务
     * @param req 条件查询任务请求类
     * @return 结果集合
     */
    Map<String, Object> findWaitTask(TaskREQ req);

    /**
     * 获取目标节点
     * @param taskId 任务id
     * @return 结果数据封装类
     */
    Result getNextNodeInfo(String taskId);

    /**
     * 完成任务
     * @param req 完成任务请求类
     * @return 结果数据封装类
     */
    Result completeTask(TaskCompleteREQ req);

    /**
     * 任务转办，把任务交给别人处理
     * @param taskId 任务id
     * @param assigneeUserKey 用户id
     * @return 结果数据封装类
     */
    Result turnTask(String taskId, String assigneeUserKey);

    /**
     * 通过流程实例ID获取已完成历史任务节点，用于驳回功能
     * @param taskId 流程实例ID
     * @return 结果数据封装类
     */
    Result getBackNodes(String taskId);

    /**
     * 驳回指定历史节点
     * @param taskId 流程实例ID
     * @param targetActivityId 历史节点
     * @return 结果数据封装类
     */
    Result backProcess(String taskId, String targetActivityId);

}
