// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Calculator {
    uint256 public result = 0;

    function add() public {
        result += 1;
    }

    function subtract(uint256 num) public {
        result -= num;
    }

    function multiply(uint256 num) public {
        result *= num;
    }

    function get() public view returns (uint256) {
        return result;
    }
}