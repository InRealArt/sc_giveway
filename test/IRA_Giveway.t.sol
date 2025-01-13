// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {Test, console} from "forge-std/Test.sol";
import {IRA_Giveway} from "src/IRA_Giveway.sol";

contract IRA_GivewayTest is Test {
  IRA_Giveway public instance;

  function setUp() public {
    address initialOwner = vm.addr(1);
    instance = new IRA_Giveway(initialOwner);
  }

  function testName() public view {
    assertEq(instance.name(), "IRA_Giveway");
  }

  function testMintFirstNFT() public {
    address initialOwner = vm.addr(1);
    address recipient = vm.addr(2);
    string memory tokenURI = "ipfs://test-uri";
    
    vm.prank(initialOwner);
    uint256 mintedTokenId = instance.safeMint(recipient, tokenURI);
    
    console.log("TokenID du NFT minte:", mintedTokenId);
    
    // Vérification
    assertEq(instance.ownerOf(mintedTokenId), recipient);
    assertEq(instance.tokenURI(mintedTokenId), tokenURI);
}

}
