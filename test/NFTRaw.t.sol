// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {NFTRaw} from "../src/NFTRaw.sol";

contract NFTRawTest is Test {
    NFTRaw public nft;

    function setUp() public {
        nft = new NFTRaw("NFTRaw", "NFTR");
    }

    function test_mint() public {
        for(uint256 i = 0; i < 10; i++) {
            nft.mint(i);
        }
    }
}
