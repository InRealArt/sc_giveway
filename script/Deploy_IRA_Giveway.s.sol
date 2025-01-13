// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {Script} from "forge-std/Script.sol";
import {console} from "forge-std/console.sol";
import {IRA_Giveway} from "src/IRA_Giveway.sol";

contract Deploy_IRA_Giveway is Script {
  function setUp() public {}

  function run() public {
    uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
    vm.startBroadcast(deployerPrivateKey);
    address initialOwner = 0x9428265E876b57BAAE905315D1A38f3F3dB79305;
    IRA_Giveway instance = new IRA_Giveway(initialOwner);
    console.log("Contract deployed to %s", address(instance));
    vm.stopBroadcast();
  }
}
