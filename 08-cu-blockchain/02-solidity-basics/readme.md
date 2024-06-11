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


