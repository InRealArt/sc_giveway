// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {Test} from "forge-std/Test.sol";
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
}
