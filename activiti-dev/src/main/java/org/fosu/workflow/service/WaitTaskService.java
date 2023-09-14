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
}
