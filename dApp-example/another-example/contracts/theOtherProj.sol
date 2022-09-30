//SPDX-License-Identifier: GPL-3.0
pragma solidity = 0.8.7;

contract theOtherProj{ 
    
    uint private Number = 0;

    function storeDate() public {
        
        Number=99;
    }

    function storeData2(uint a) public {

        Number = a;
    }

    function showData() public view returns(uint) {

        return Number;
    }
}