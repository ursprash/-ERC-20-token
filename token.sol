// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenGamingToken is ERC20, Ownable {
    constructor() ERC20("Degen Gaming Token", "DGT") {
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

    // Redeem tokens
    function redeem(uint256 _value) external returns (bool success) {
        require(balanceOf(msg.sender) >= _value, "Insufficient balance");
        _burn(msg.sender, _value);
        emit Redeem(msg.sender, _value);
        return true;
    }

    // Burn tokens
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    // Event to emit when tokens are redeemed
    event Redeem(address indexed account, uint256 value);
}
