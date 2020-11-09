/*
    The ERC20 E-RADIX tokens have been generated by Radix Tokens (Jersey) Limited. 

    The purchase possession, exchange and use and ownership of these tokens are subject 
    to the terms and conditions, risk warnings and disclaimers issued by Radix Token’s Jersey Limited 
    which can be found at www.radixtokens.com/terms/ERC20token and which shall be binding on all 
    persons who acquires or seeks to acquire possess or control the use custody exchange or ownership 
    of these tokens and all successors in title including anyone who may claim or be entitled to 
    an equitable right title or interest in these tokens or any of them.
*/
pragma solidity 0.6.8;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Burnable.sol";
import "../contract-dependencies/ERC20Mintable.sol";

contract eXRD is ERC20Burnable, ERC20Mintable {
    constructor(address depositAddress, uint256 amount)
        public
        ERC20("E-RADIX", "eXRD")
    {
        require(depositAddress != address(0));

        _addOwner(msg.sender);
        _mint(depositAddress, amount.mul((10**uint256(decimals()))));
    }
}