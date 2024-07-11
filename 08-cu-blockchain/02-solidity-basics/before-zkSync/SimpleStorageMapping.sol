// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; // version 

contract SimpleStorage {
    struct Person {      // a struct, which on first glance looks like a dictionary or set
        uint256 favNo;
        string name;
    }

    uint256 myFavNo; // favNo initialised to 0

    Person[] public listOfPeople; // array, zero indexed

    // mapping
    mapping(string => uint256) public nameToFavNum;
    
    function store(uint256 _favNo) public {
        myFavNo = _favNo;
    }

    function retreive() public view returns (uint256) {
        return myFavNo;
    }

    function addPerson(string memory _name, uint256 _favNo) public {      
        listOfPeople.push(Person(_favNo, _name));
        nameToFavNum[_name] = _favNo;
    }
}
