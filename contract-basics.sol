// SPDX-License-Identifier: GPL-3.0

// pragma solidity = 0.8.7;

contract SecondContract{
    int public number = 100;

    function doSomething() public {
        number = number + 10;
    }
}