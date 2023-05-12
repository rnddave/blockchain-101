// SPDX-License-Identifier: MIT

pragma solidity 0.8.8; 

contract SimpleStructures {

    // declaring variable types (solidity is a statically typed language)
    // basic variable (integer)
    uint256 public favouriteNumber;
    // a structure (seems like kind of an object)
    struct People {
        uint256 favouriteNumber;
        string name;
    }
    // an array, note this one is a dynamic array as the [] has no number in it, a number would define the array size
    People[] public people;
    // a mapping, this will make it easier to find numbers if we know their name
    mapping(string => uint256) public nameToFavouriteNumber;    // NB when create mapping = initialise everything to NULL value



    // functions -- >>> 
    // FUNCTION - storing a simple number 
    function storeNumber(uint256 _favouriteNumber) public {
        favouriteNumber = _favouriteNumber;

    }

    // FUNCTION - retrieving a simple number
    function retreiveNumber() public view returns (uint256){
        return favouriteNumber;
    }

    // FUNCTION - populating our array with new people
    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        People memory newPerson = People({favouriteNumber: _favouriteNumber, name: _name});
        people.push(newPerson);
        nameToFavouriteNumber[_name] = _favouriteNumber; // NB at time of testing, this is case-sensitive
    }

    // WE COULD ACTUALLY WRITE THAT FUNCTION IN A COUPLE OF WAYS
    /* 

    // NB!!! The way we did it outside of comment (Option A) is best practice as it's very clear what we are doing, but these also work

    // (Option B)
    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        People memory newPerson = People(_favouriteNumber, _name); // <<< CHANGES ARE HERE 
        people.push(newPerson);
    }

    // (Option C)
    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        people.push(People(_favouriteNumber, _name)); // <<< CHANGES ARE HERE
    }
    */

}