// SPDX-License-Identifier: GPL-3.0
pragma solidity = 0.8.7;

contract One{

    uint private dollar;
    uint public pound;

    constructor() {
        dollar=93;
        pound=107;
    }
    

function checkDollarRate() view public returns(uint){
    return dollar;
    }
}

contract Two is One{
    function checkEverything() view public returns (uint){
        return pound;
    }
}
