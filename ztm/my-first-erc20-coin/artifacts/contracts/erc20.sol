// SPDIX-Licence-Identification: MIT
pragma solidity 0.8.11;


contract ERC20 {
    // declare our variables (this is a strongly typed language remember)
    uint256 public totalSupply;
    string public name;
    string public symbol;
    // uint public decimals;

    // we need some where to map our balences
    mapping(address => uint256) public balanceOf; 

    constructor(string memory _name, string memory _symbol) {
        name = _name;
        symbol = _symbol;
    }

    function decimals() external pure returns (uint8) {     // declaring it here is cheaper from gas PoV
        return 18;
    }

    function transfer(address recipient, uint256 amount) external returns (bool) {
        require(recipient != address(0), 'ERC20: transfer to sero address');
        
        uint256 senderBalance = balanceOf[msg.sender];

        require(senderBalance >= amount, 'ERC20: transfer amount exceed balance');

        balanceOf[msg.sender] = senderBalance - amount;
        balanceOf[recipient] += amount;

        return true;
    }
}







