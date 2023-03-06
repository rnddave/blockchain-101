// SPDX-License-Identifier: GPL-3.0
pragma solidity = 0.8.7;

contract bankOfEng{
    function One() virtual public pure returns (string memory){
        return "this is the message";
    }
    function Two() public pure returns(string memory) {
        return "this is message 2";
    }
}

contract HSBC is bankOfEng{
    function One() override public pure returns (string memory){
        return "my over-ridden message";
    }
}
