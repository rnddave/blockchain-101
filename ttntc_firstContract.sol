// SPDX-License-Identifier: GPL-3.0
pragma solidity = 0.8.7;

contract MainContract{
    
    address payable private ownerAddress; 

    constructor(){
        ownerAddress = payable(msg.sender);
    }

    function whosTheBoss() public view returns (address) {
        return ownerAddress;
    }

    function getEther() payable public{}
    //note this is all you need to receive ethers/alternative 
    // the ether paid, is owned by the contract, doesn't go to who created the smart contract

    function checkBalance() public view returns(uint) {
        return address(this).balance / 1 ether;

    }

    function transferToOwner() public {
        ownerAddress.transfer(address(this).balance);
    }
}
