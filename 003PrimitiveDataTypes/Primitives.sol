// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Primitives {
    bool public boo = true;
    /**
    * 非负整数  
    *   uint8 range from 0 to 2**8 - 1
    *   uint16 range from 0 to 2**16 - 1
    *   uint256 range from 0 ~ 2**256 - 1
    */
    uint8 public u8 = 1;
    uint256 public u256 = 256;
    uint256 public u = 123;//uint 是 uint 256 的alias别名

    /* 负数
    *   Negative numbers range:
    *   int256 ranges from -2**255 to 2*255-1
    */
    int8 public i8 = -1;
    int256 public i256 = 456;
    int256 public i = -100; // int is same as int256

    //minimum and maximum of int
    int256 public minInt = type(int256).min;
    int256 public maxInt = type(int256).max;

    address public addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;

    /*
    *   在Solidity中，字节类型代表了 一个比特序列。Solidity提供了两种btyes：
    *   1、固定大小的比特数组
    *   2、动态大小的比特数组
    */
    bytes1 a = 0xb5;//  [10110101]
    bytes2 b ;//0x56;//  [01010110]

    /**
    * 默认值：
    *   未赋值的变量会有个默认值
    */
    bool public defaultBoo; // false
    uint256 public defaultUint;//   0
    int256 public defaultInt;// 0
    address public defaultAddress;//    0x0000000000000000000000000000000000000000  //address 16进制表示需要40个0；表示的范围是0~2^160-1 是一个非常庞大的数字
}
