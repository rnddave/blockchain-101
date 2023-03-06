// SPDX-License-Identifier: GPL-3.0
pragma solidity = 0.8.7;

contract WhoMadeIt{
    address private ownerAddress; 

    constructor(){
        ownerAddress = msg.sender;
    }

    function whosTheBoss() public view returns (address) {
        return ownerAddress;
    }
}
