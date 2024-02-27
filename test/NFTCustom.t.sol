// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {NFTCustom} from "../src/NFTCustom.sol";

contract NFTCustomTest is Test {
    NFTCustom public nft;

    function setUp() public {
        nft = new NFTCustom("NFTCustom", "NFTC");
    }

    function test_mint() public {
        for(uint256 i = 0; i < 10; i++) {
            nft.mint(i);
        }
    }
}
