// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract SimpleStorage {
    //将要存储一个数的状态变量
    uint256 public num;

    //需要发送一个交易来写入一个状态变量
    function set(uint256 _num) public {
        num = _num;
    }

    //你无须发送一个交易即可从一个状态变量中读取内容
    function get() public view returns (uint256) {
        return num;
    }
}