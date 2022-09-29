// SPDX-License-Identifier: GPL-3.0
pragma solidity = 0.8.7;

// sometimes you need to define what functions you want, but not the instructions within the functions, we call this an abstract function 

abstract contract bankOfEng{
    function openAccount() virtual public pure returns (string memory);

    function checkBalance() virtual public pure returns(string memory);
}

// now we can call this contact, but we can over-write the function as we require. 

contract HSBC is bankOfEng{

    function openAccount() override public pure returns (string memory){
        return "you can open account liek this";
    }


    function checkBalance() override public pure returns(string memory){
        return "you can check balance like this";
    }
}