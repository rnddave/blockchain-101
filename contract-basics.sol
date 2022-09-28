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
