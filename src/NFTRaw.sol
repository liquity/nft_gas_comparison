// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;

import "openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";


contract NFTRaw is ERC721 {
    constructor(string memory name_, string memory symbol_) ERC721(name_, symbol_) {}

    function mint(uint256 _tokenId) external {
        _mint(msg.sender, _tokenId);
    }
}
