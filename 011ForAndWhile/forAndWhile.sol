// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

/*
*   不要写没有边界判断的循环，因为你可能会招致gas limit, 会导致交易失败。
*/
contract Loop {
    function loop() public pure {
        //for loop
        for(uint256 i = 0; i < 10; i++) {
            if(i == 3) {
                continue;
            }
            if(i == 5) {
                break;
            }
        }

        uint256 j;
        while(j < 10)  {
            j++;
        }
    }

}