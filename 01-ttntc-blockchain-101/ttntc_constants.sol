// SPDX-License-Identifier: GPL-3.0
pragma solidity = 0.8.7;

contract Constants{

    // this is a constant, has to be initialised at declaration 
    uint public constant salary=900;

    // but sometimes we want something that is the result of a calculation but is immutable, cannot be changed. 

    // we need the constructor for this

    uint public immutable salary2;

    constructor(){
        salary2=900;
    }

}
