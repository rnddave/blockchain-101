// SPDIX-Licence-Identification: MIT
pragma solidity 0.8.11;


contract ERC20 {
    // declare our variables (this is a strongly typed language remember)
    uint256 public totalSupply;
    string public name;
    string public symbol;
    uint public decimals;

    constructor(string memory _name, string memory _symbol) {
        name = _name;
        symbol = _symbol;
    }

    function decimals() external pure returns (uint8) {     // declaring it here is cheaper from gas PoV
        return 18;
    }

}