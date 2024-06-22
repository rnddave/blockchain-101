# Our Code:

```solidity

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
```

We want to deploy this to a testnet. For this example: 

- In Remix, go to Deploy tab
- from **environment** dropdown, select **injected provider - metamask**
  - this means allowing the website to access our metamask wallet 
- You will be asked which account to connect
- Now click on **deploy**
- you will get a popup from metamask asking us to sign the transaction essentially 
- hit **confirm**

my transaction: [View on Etherscan](https://sepolia.etherscan.io/tx/0xbb2efe3a146fb90b8a4ccf42154c1d00aef62507c8176dab71ebd69f9e883318)

From Remix, under deployed contracts, you can copy the address, paste it into etherscan and see details of the smart contract: 

[My contract](https://sepolia.etherscan.io/address/0xd9dd2df590a45b6400c36f730662750fb66f7db2)

---

Again from Remix, we can now interact with the contract, and again, remaining in the Deploy tab. 

The blue buttons are 'free to use' so clicking **retreive** for example would not incur a cost, however, the orange buttons (adding people to the array, for eg) will incur a cost. 

clicking an Orange button, causes MetaMask to pop-up asking you to sign and send funds for the transaction to take place. **Confirm** and the terminal will give you the message: 

```
CALL
[call]from: 0xfE2166581e4A57647FacC80C8149b8477fc14229to: SimpleStorage.retreive()data: 0xb05...784b8
transact to SimpleStorage.addPerson pending ... 
```

You can expand this, click on **view on etherscan** to see the details. 

