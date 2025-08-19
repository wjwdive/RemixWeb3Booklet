// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
/**
*   三种不同的变量：
*   1、本地变量，local, 声明在一个函数中，不会存储在区块链上
*   2、状态变量，state，声明在一个函数外，存储在区块链上
*   3、全局，global, 提供关于区块链的信息
*/

contract Variables {
    //State类型的变量存储在区块链上
    string public text = "Hello";
    uint256 public num = 233;

    function foo() public view {
        //Local类型的变量 不储存在区块链上
        uint256 i = 256;

        //一些Global类型的变量
        uint256 timestamp = block.timestamp;    //当前块的时间戳
        address sender = msg.sender;    //调用者的地址
    }
}