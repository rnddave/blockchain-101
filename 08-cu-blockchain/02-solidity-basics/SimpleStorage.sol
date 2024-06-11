// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; // version 

contract SimpleStorage {
    uint256 myFavNo; // favNo initialised to 0

    struct Person {      // a struct, which on first glance looks like a dictionary or set
        uint256 faveNo;
        string name;
    }

    Person public colin = Person(6, "Colin");
    
    uint256[] listOfFavNo; // array, zero indexed

    function store(uint256 _favNo) public {
        myFavNo = _favNo;
    }

    function retreive() public view returns (uint256) {
        return myFavNo;
    }

}
