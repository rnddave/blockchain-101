// SPDX-License-Identifier: GPL-3.0
pragma solidity = 0.8.7;

contract One{

    uint private dollar;
    //uint public pound;

    constructor(uint amo) {
        dollar=amo;
    }
    

function checkDollarRate() view public returns(uint){
    return dollar;
    }
}

contract Two is One(98){
    // I am calling One and passing 98 to the constructor

}

contract Three is One{
    //this time we're going to ask the user for a value 

    constructor(uint A) One(A){
        // this passes the answer A back to One

    }
}