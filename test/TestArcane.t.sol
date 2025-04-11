// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {Test} from "forge-std/Test.sol";
import {Arcane} from "src/Arcane.sol";
import {DeployArcane} from "script/DeployArcane.s.sol";

contract TestArcane is Test {
    Arcane public arcane;
    DeployArcane public deployer;

    function setUp() public {
        deployer = new DeployArcane();
        arcane = deployer.run();
    }

    function testNameIsCorrect() public view {
        string memory expectedName = "Arcane";
        string memory actualName = arcane.name();
        // String are array of bytes so we can't compare them like primitive types like uint, int , address, etc.abi
        //Instead we can hash those string and compare the hashes of these strings using abi.encodeWith
    }

    


}
