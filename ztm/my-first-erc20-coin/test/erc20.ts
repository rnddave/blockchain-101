import { expect } from "chai";
import { ethers } from "hardhat";
import { ERC20 } from "../typechain-types";

describe('my-first-erc20-coin', function(){
  beforeEach(async function () {
    let erc20Contract: ERC20;
    let someAddress: SignerWithAddress;
    let someOtherAddress: SignerWithAddress;


    const erc20ContractFactory = await ethers.getContractFactory('ERC20');
    const erc20Contract = await erc20ContractFactory.deploy('testies', 'SYM');
    await erc20Contract.deployed();

    someAddress = (await ethers.getSigners())[1];
    someOtherAddress = (await ethers.getSigners())[2];
  });

  describe('when i have 10 tokens', function() {
    beforeEach(async function () {
      await erc20Contract.transfer(someAddress.address, 10);  

      describe('when I transfer 10 coin', function() {
        it('should transfer token correctly', async function () {
          await erc20Contract.connect(someAddress).transfer(someOtherAddress.address, 10)
          expect(await erc20Contract.balanceOf(someOtherAddress.address)).to.equal(10)
        });
      });
      // we need to try to mint 10 tokens 
      // so we will add this to the erc20 contract >>> 
      /*    function _mint(address to, uint256 amount) internal {
        require(to != address(0), "ERC20: mint to the zero address");

        totalSupply += amount;
        balanceOf[to] += amount;

        emit Transfer(address(0), to, amount);
    }
    
    //  we also add _mint(some tokens to the constructor in our ERC for the testing phase)
    */
    });
  });
});