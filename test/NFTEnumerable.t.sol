// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {NFTEnumerable} from "../src/NFTEnumerable.sol";

contract NFTEnumerableTest is Test {
    NFTEnumerable public nft;

    function setUp() public {
        nft = new NFTEnumerable("NFTEnumerable", "NFTE");
    }

    function test_mint() public {
        for(uint256 i = 0; i < 10; i++) {
            nft.mint(i);
        }
    }
}
