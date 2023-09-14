package org.fosu.workflow.controller;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.fosu.workflow.entities.Loan;
import org.fosu.workflow.req.LoanREQ;
import org.fosu.workflow.service.LoanService;
import org.fosu.workflow.utils.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@Api("借款申请控制层")
@ResponseBody
@RestController
@RequestMapping("/loan")
public class LoanController {
    @Autowired
    private LoanService loanService;

    @ApiOperation("新增借款申请")
    @PostMapping
    public Result add(@RequestBody Loan loan) {
        return loanService.add(loan);
    }

    @ApiOperation("查询借款申请列表")
    @PostMapping("/list")
    public Result listPage(@RequestBody LoanREQ req) {
        return loanService.listPage(req);
    }

    @ApiOperation("查询借款详情信息")
    @GetMapping("/{id}")
    public Result view(@PathVariable String id) {
        Loan loan = loanService.getById(id);
        return Result.ok(loan);
    }
    @ApiOperation("更新借款详情信息")
    @PutMapping
    public Result update(@RequestBody Loan loan) {
        return loanService.update(loan);
    }
}