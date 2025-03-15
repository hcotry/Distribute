// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.22;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract TstErc20 is ERC20, Ownable, ERC20Permit {
    constructor()
        ERC20("My Test Token", "TST")
        Ownable(msg.sender)
        ERC20Permit("My Test Token")
    {
        _mint(msg.sender, 6138 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}