# Some basics

Using [Remix](https://remix.ethereum.org/). 

## The License

You need a license (well, it is a warning without), this is a comment 

    ```// SPDX-License-Identifier: MIT```

## Version

We then need to define the version we want to use

    ```pragma solidity 0.8.18; // version ```

## Contract

    contract NameHere {
        anything in here is in the contract
    }

--- 

# Basic Data Types 

- boolean
- uint
- int
- address
- bytes

uint = unsigned integer 

```solidity

// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; // version 

contract SimpleStorage {
    bool hasFavouriteNumber = true;
    uint256 favouriteNumber = 69;
    string favNumInText = "Sixty Nine";
    int256 favNegativeInt = -69; 
    bytes32 favByte = "cat";

    address = 0xfE2166581e4A57647FacC80C8149b8477fc14229;

}
```
--- 

# Functions

Functions **and** Variables can have one of **4** different visibilities in Solidity

- public
- private
- external
- internal

### public

visible externally and internally, creates a **getter** function for storage/state variables 

### private

only visible in the current contract

### external

only visible externally (only for functions) *can only be message called via this.func*

### internal 

only visible internally

**THIS IS DEFAULT IF YOU DO NOT SET ANYTHING ELSE**

--- 

# State Mutability 

This is why buttons are orange or blue in Remix... but what does it mean? 

## View Functions

This is a function that **promises** not to modify the state. 

In fact you cannot modify the state from within a **view function**.

## Pure Functions

Functions can be marked **pure** which means they mprose not to view or modify the state. 

    In particular, it should be possible to evaluate a pure function at compile-time given only its inputs and msg.data, but without any knowledge of the current blockchain state. 

Example to consider: 

```solidity

// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; // version 

contract SimpleStorage {
    uint256 public favNo; // favNo initialised to 0

    function store(uint256 _favNo) public {
        favNo = _favNo;
    }

    function retreive() public view returns (uint256) {
        return favNo; // we are only returning the state, however, to do so, we have to first view the state, this is different from a pure function
    }

    function retreiveTwo() public pure returns (uint256) {
        return 69; // in a pure function, we can also not read the state, therefore we'd just return a pre-defined value
    }

}
```
---

# Arrays & Structs

**Arrays** are pretty much the same in SOlidity as they are in other languages. 

**Structs** are a bit different. You can basiclly use it to define your own type



