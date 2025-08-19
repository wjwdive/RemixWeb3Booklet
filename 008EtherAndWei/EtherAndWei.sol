// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract EtherUnits {
    // 1 wei 就等与1 ，以太币的最小单位一微
    uint256 public onewei = 1 wei;
    bool public isOneWei = (onewei == 1);

    uint256 public oneGwei = 1 gwei;
    // 1gwei 等于 10^9 wei
    bool public isOneGwei = (oneGwei == 1e9);

    uint256 public oneEther = 1 ether;
    // 1 ether == 10^18 wei
    bool public isOneEther = (oneEther == 1e18);

}