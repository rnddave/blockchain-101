// SPDX-License-Identifier: GPL-3.0

// pragma solidity = 0.8.7;

contract SecondContract{
    int public number = 100;

    function doSomething() public {
        number = number + 10;
    }
}

contract SecondContract{

    int private number = 100;

    function doSomething() public {
        number = number + 10;
    }

    function showSomething() public view returns(int) {
        return number;
    }
}

contract BankContract{

    int private Amount;

    function deposit(int amo) public {
        Amount = Amount+amo;

    }

    function showBalance() public view returns(int){
        return Amount;
    }

    function withdraw(int amo) public {
        if(amo <= Amount) {
            Amount-=amo;
        }
        
    }

    
}

contract MainContract{
    function getEther() payable public{}
    //note this is all you need to receive ethers/alternative 
    // the ether paid, is owned by the contract, doesn't go to who created the smart contract

    function checkBalance() public view returns(uint) {
        return address(this).balance / 1 ether;
        // we don't know the address, so we use address(this)
        // the balance by defaul is shown in Wei, so we use / 1 ether to make it a bit easier to read 

    }
}
