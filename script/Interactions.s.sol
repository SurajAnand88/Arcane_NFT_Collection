// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {Script} from "forge-std/Script.sol";
import {DevOpsTools} from "../lib/foundry-devops/src/DevOpsTools.sol";
import {Arcane} from "src/Arcane.sol";

contract MintArcaneNFT is Script {
    function run() external {
        address mostRecenctDeployedContract = DevOpsTools.get_most_recent_deployment("Arcane", block.chainid);
        mintNftOnContract(mostRecenctDeployedContract);
    }

    function mintNftOnContract(address arcaneContract) public {
        vm.startBroadcast();
        Arcane(arcaneContract).mint();
        vm.stopBroadcast();
    }

    // impliment flipmood on chain
}
