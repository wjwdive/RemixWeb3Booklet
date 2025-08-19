// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract ArrayRemoveFromEnd {
    uint256[] public arr;

    //数组中删除一个元素会产生一个空缺，一个技巧是把最后一个元素移动到这里用来删除
    function remove(uint256 index) public {
        // 把最后一个元素移动到要删除的元素的位置
        arr[index] = arr[arr.length - 1];
        // 删除最后一个元素
        arr.pop();
    }

    function test() public {
        arr = [1, 2, 3, 4];
        remove(1);//[1, 4, 3]

        assert(arr.length == 3);
        assert(arr[0] == 1);
        assert(arr[1] == 4);
        assert(arr[2] == 3);

        remove(2);  // [1, 3]
        assert(arr.length == 2);
        assert(arr[0] == 1);
        assert(arr[1] == 4);
    }
}