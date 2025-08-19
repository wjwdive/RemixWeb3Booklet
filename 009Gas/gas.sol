// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract BadGas {
    uint256 public i = 0;
    //一个消耗无限gas的示例
    function forever() public {
        while (true) {
            i++;
        }
    }
}

//安全写法示例，扣减汽油 之后做校验
contract wellDoneGas external payable {
    uint256 gasStart = gasleft(); //记录初始 gas
    //核心业务逻辑
    _performComplexOperation();
    //动态计算实际消耗
    uint256 gasUsed = gasStart - gasleft();
    requier(gasUsed < tx.gasprice *0.9, "Gas overrun risk!!!");
}