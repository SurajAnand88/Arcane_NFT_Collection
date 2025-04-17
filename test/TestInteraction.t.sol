// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

import {Test} from "forge-std/Test.sol";
import {Arcane} from "src/Arcane.sol";
import {console} from "forge-std/console.sol";
import {DeployArcane} from "script/DeployArcane.s.sol";

contract TestInteractions is Test {
    Arcane public arcane;
    DeployArcane public deployer;

    address public USER = makeAddr("User");

    function setUp() public {
        deployer = new DeployArcane();
        arcane = deployer.run();
    }

    function testViewTokenUri() public user {
        arcane.mint();
        console.log(arcane.tokenURI(0));
    }

    modifier user() {
        vm.prank(USER);
        _;
    }
}
