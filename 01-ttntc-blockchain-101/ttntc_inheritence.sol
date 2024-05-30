// SPDX-License-Identifier: GPL-3.0
pragma solidity = 0.8.7;

contract One{
    function first() public pure returns (string memory){
        return "Message 1";

    }

    function second() public pure returns (string memory) {
        return "Message 2";
    }
}

contract Two is One{

}

contract Three is One{
    function BoomBar() public pure returns (string memory){
        return "Message 3";
    }
}
