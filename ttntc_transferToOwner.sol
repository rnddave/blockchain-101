// SPDX-License-Identifier: GPL-3.0
pragma solidity = 0.8.7;

contract MainContract{
    
    address payable private ownerAddress; 

    constructor(){
        ownerAddress = payable(msg.sender);
    }

    function checkBalance() public view returns(uint) {
        return address(this).balance / 1 ether;

    }

    function transferToOwner() public {
        ownerAddress.transfer(address(this).balance);
    }
}
