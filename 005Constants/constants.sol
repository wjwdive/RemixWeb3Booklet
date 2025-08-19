// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
/**
*   常量/不可变量， 就是不可以更改的变量。例如硬编码，用常量记录汽油费
*/
contract Constants {
    // 使用全大写来表示常量
    address public constant MY_ADDRESS = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;
    uint256 public constant MY_UINT = 123;
}