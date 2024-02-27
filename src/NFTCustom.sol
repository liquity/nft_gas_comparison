// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;

import "./Dependencies/ERC721SemiEnumerable.sol";


contract NFTCustom is ERC721SemiEnumerable {
    constructor(string memory name_, string memory symbol_) ERC721(name_, symbol_) {}

    function mint(uint256 _tokenId) external {
        _mint(msg.sender, _tokenId);
    }
}
