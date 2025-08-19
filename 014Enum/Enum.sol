// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import "./EnumDeclaration.sol";

contract Enum {

    //枚举的默认值是 首个枚举值
    Status public status; // Pending

    //Returns uint
    // Pending - 0
    // Shipped - 1
    // Accepted - 2
    // Rejected - 3
    // Canceled - 4
    function get() public view returns (Status) {
        return status;
    }

    // 设置枚举值
    function set(Status _status) public {
        status = _status;
    }

    // 设置枚举值的另一种方式
    function cancel() public {
        status = Status.Canceled;
    }

     // delete 操作可以重置了 枚举值为他的第一个值
    function reset() public {
        delete status;
    }
}