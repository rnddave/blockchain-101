
 

let contractAddress = "0xA522bE8457B3d0405aecfcd007Bf4DBB6D5071b3"
let ABI = [
    {
        "inputs": [],
        "name": "storeDate",
        "outputs": [],
        "stateMutability": "nonpayable",
        "type": "function"
      },
      {
        "inputs": [
          {
            "internalType": "uint256",
            "name": "a",
            "type": "uint256"
          }
        ],
        "name": "storeData2",
        "outputs": [],
        "stateMutability": "nonpayable",
        "type": "function"
      },
      {
        "inputs": [],
        "name": "showData",
        "outputs": [
          {
            "internalType": "uint256",
            "name": "",
            "type": "uint256"
          }
        ],
        "stateMutability": "view",
        "type": "function"
      }
]

let Web3Class = require("web3"); 
let web3Object=new Web3Class(new Web3Class.providers.HttpProvider("HTTP://127.0.0.1:8545"))

let contract = new web3Object.eth.Contract(ABI,contractAddress)

let fromAddress = "0x7a79539807CFC33FDB510CdC032d0fa16691A726"
let data = 7

contract.methods.storeData2(data).send({from:fromAddress})

