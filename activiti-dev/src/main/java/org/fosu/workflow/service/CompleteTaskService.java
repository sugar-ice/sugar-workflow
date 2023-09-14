package org.fosu.workflow.service;

import org.fosu.workflow.req.TaskREQ;
import java.util.Map;

public interface CompleteTaskService {
    /**
     * 查询完成任务
     * @param req 完成任务请求类
     * @return 结果数据封装类
     */
    Map<String, Object> findCompleteTask(TaskREQ req);
}