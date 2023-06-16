// SPDX-License-Identifier: MIT
// license identifier is optional - but some compilers won't run without it

pragma solidity 0.8.8; // very specific
// pragma solidity ^0.8 = anything above
// pragma solidity >=0.8.7 <0.9.0 = a range of compilers we're happy to use 
// NB where the carot and spaces are in these commands is likely important - test anx confirm

contract SimpleStorage {
    // basic data types (common)
    // uint, boolean, int, address, bytes

    // bool hasFavouriteNumber = true;

    // uint favNumber = 69; 
    // uint8 - 256 (default = 256) 

    // int favNumber2 = 5;

    // string favWord = TheWord; (interestingly string is just a byte data type)

    // address = 0xfE2166581e4A57647FacC80C8149b8477fc14229

    uint256 public favouriteNumber; // we declared it but didn't give a value = default = 0

    function store(uint256 _favouriteNumber) public {
        favouriteNumber = _favouriteNumber;
    }
    // 0xd9145CCE52D386f254917e481eB44e9943F39138 (deployed to this address)


    // there are 2 states that don't have to spend gas to use = VIEW / PURE 
    // at the time of testing on REMIX, the 'free' states look like blue buttons 
    // and the 'not-free' look like organge buttons

    // VIEW = read something (can't update the state)
    // PURE = CANNOT read from the public blockchain (also can't change the state)

    // we might use a pure function to hold some math, an algorithm etc

    /* 
    function add() public pure returns (uint256){
        return(1 + 1);    
    }
    */

    function retrieve() public view returns(uint256){
        return favouriteNumber;
    }


}



