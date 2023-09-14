package org.fosu.workflow.service;

import org.fosu.workflow.req.StartREQ;
import org.fosu.workflow.utils.Result;

import javax.servlet.http.HttpServletResponse;

public interface ProcessInstanceService {
    /**
     * 通过流程实例id获取申请表单
     * @param procInstId 流程实例id
     * @return 数据封装实体类
     */
    Result getFormNameByProcInstId(String procInstId);

    /**
     * 获取流程实例审批历史图
     * @param procInstId 流程实例id
     * @param response 浏览器相应类
     */
    void getHistoryProcessImage(String procInstId, HttpServletResponse response);

    /**
     * 提交申请启动流程实例
     * @param req 启动流程请求类
     * @return 数据封装实体类
     */
    Result startProcess(StartREQ req);

    /**
     * 撤回申请
     * @param businessKey 业务id
     * @param procInstId 流程实例id
     * @param message 撤回原因
     * @return 数据封装实体类
     */
    Result cancel(String businessKey, String procInstId, String message);

    /**
     * 通过流程实例Id查询审批历史信息
     * @param procInstId 流程实例id
     * @return 数据封装实体类
     */
    Result getHistoryInfoList(String procInstId);

}
