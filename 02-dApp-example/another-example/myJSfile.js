let web3Class = require("web3");
let web3Object = new web3Class(new web3Class.providers.HttpProvider("HTTP://127.0.0.1:8545"))

let promise1 = web3Object.eth.getBalance("0x929A14E19eb0C97632661Dd26E2DEc1e3F074E0E")
let promise2 = web3Object.eth.getBalance("0x623B0900e51D0143E5CA800eFE435996233e388D")

promise1.then(function(result){
    console.log(result);
})

promise2.then(function(result){
    console.log(result);
})

promise1.then(function(getBal){
    console.log(web3Object.utils.fromWei(getBal, "Ether"))
})