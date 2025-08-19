// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Array {
    //initialize an array
    uint256[] public arr;
    uint256[] public arr2 = [1, 2, 3];
    //fixed sized array, all elements initialize to 0.
    uint256[] public myFixedSizeArr;

    function get(uint256 i) public view returns (uint256) {
        return arr[i];
    }

    //Solidity 可以返回整个数组，但是应该避免这样做，因为那样会导致消耗无限量的gas
    function getArr() public view returns (uint256[] memory) {
        return arr;
    }

    function push(uint256 i) public {
        //在数组末尾添加一个元素，数组长度会自动+1
        arr.push(i);
    }

    function pop() public {
        //删除数组末尾的元素，数组长度会自动-1
        arr.pop();
    }

    function getLength() public view returns (uint256) {
        return arr.length;
    }

    function examples() external pure {
        //memory 数组的长度是固定的，无法更改
        uint256[] memory a = new uint256[](5);

        //创建一个嵌套数组
        uint256[][] memory b = new uint256[][](2);//外层 2元素
        for(uint256 i = 0; i < b.length; i++) {
            b[i] = new uint256[](3);//内层3元素
        }
        b[0][0] = 1;
        b[0][1] = 2;
        b[0][2] = 3;
        b[1][0] = 4;
        b[1][1] = 5;
        b[1][2] = 6;
    }
}