// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenGamingToken is ERC20, Ownable {
    constructor() ERC20("DegenGamingToken", "DGT") {
        _mint(msg.sender, 1000000000 * 10**decimals()); // Mint initial supply (1 billion tokens)
    }

    // Mint new tokens (only the owner can call this function)
    function mint(address account, uint256 amount) public onlyOwner {
        _mint(account, amount);
    }

    // Transfer tokens
    function transfer(address recipient, uint256 amount) public override returns (bool) {
        _transfer(_msgSender(), recipient, amount);
        return true;
    }

    // Redeem tokens (burn)
    function redeem(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}
