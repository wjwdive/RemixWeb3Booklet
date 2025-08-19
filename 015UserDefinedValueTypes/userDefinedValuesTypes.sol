// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

type Duration is uint64;
type Timestamp is uint64;

type Clock is uint128;

library LibClock {
    function wrap(Duration _duration, Timestamp _timestamp) internal pure returns (Clock clock_) {
        assembly {
            //data  | Duration | Timestamp
            //bit   | 0...63   | 64...127
            clock_ := or(shl(0x40, _duration), _timestamp)
        }
    }

    function duration(Clock _clock) internal pure returns (Duration duration_) {
        assembly {
            duration_ := shr(0x40, _clock)
        }
    }

    function timestamp(Clock _clock) internal pure returns (Timestamp timestamp_) {
        assembly {
            timestamp_ := shr(0xC0, shl(0xC0, _clock))
        }
    }
}



