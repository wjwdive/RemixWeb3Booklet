// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;
// 枚举只能是标识符，不能是字符串或数字，一个枚举类型最多支持256个枚举值。可转换为整数，优化，每个枚举变量仅仅占用一个字节。
enum Status {
    Pending,
    Shipped,
    Accepted,
    Rejected,
    Canceled
}