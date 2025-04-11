// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import {Arcane} from "src/Arcane.sol";

contract DeployArcane is Script {
    Arcane public arcane;

    function run() external returns (Arcane) {
        vm.startBroadcast();
        arcane = new Arcane();
        vm.stopBroadcast();
        return arcane;
    }
}
