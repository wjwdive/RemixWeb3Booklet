// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;
/*
*   创建语法 mapping(key type => value type)
*   键可以是：内置类型：uint,address,bool, 字节类型：bytes；字符串了下 string; 任意合约类型： contract; 
    键不可以是： 自定义结构体，其他mapping
*   值可以是： 任意数据类型；嵌套映射（如： mapping(uint => mapping(address => bool)）；数组；自定义结构体；
    
    mapping特性： 不可迭代性；无法直接遍历映射中的所有键值对。必须通过已知的键名访问值； 需要额外数据结构实现遍历功能。
*/
contract Mapping {
    mapping(address => uint256) public myMap;
    function get(address _addr) public view returns (uint256) {
        return myMap[_addr];
    }

    function set(address _addr, uint256 _i) public {
        myMap[_addr] = _i;
    }

    function remove(address _addr) public {
        delete myMap[_addr];
    }

}

contract NestedMapping {
    mapping(address => mapping(uint256 => bool)) public nested;
    //即使没有初始化，也可以获取一个嵌套mapping的值。
    function get(address _addr, uint256 _i) public view returns (bool) {
        return nested[_addr][_i];
    }
    
    function set(address _addr, uint256 _i, bool _boo) public {
        nested[_addr][_i] = _boo;
    }

    function remove(address _addr, uint256 _i) public {
        delete nested[_addr][_i];
    }
}