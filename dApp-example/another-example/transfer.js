
let Web3Class = require("web3"); 
let web3Object=new Web3Class(new Web3Class.providers.HttpProvider("HTTP://127.0.0.1:8545")) 

let fromAddress="0x204b5EaF9d2Efe0BF9fC91772Fe766Af43376A34" 
let toAddress="0xDD538A99FB07c80e4dB0Ca36471506C21Ce16B91" 

web3Object.eth.sendTransaction( { 
    from:fromAddress, to:toAddress, value:web3Object.utils.toWei("5","ether")
} );