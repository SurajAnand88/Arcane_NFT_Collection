// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {Script} from "forge-std/Script.sol";
import {DevOpsTools} from "../lib/foundry-devops/src/DevOpsTools.sol";
import {Arcane} from "src/Arcane.sol";
import {console} from "forge-std/console.sol";

contract MintArcaneNFT is Script {

    address public mostRecenctDeployedContract;
    function run() external {
        mostRecenctDeployedContract = DevOpsTools.get_most_recent_deployment("Arcane", block.chainid);
        mintNftOnContract(mostRecenctDeployedContract);
    }

    function mintNftOnContract(address arcaneContract) public {
        vm.startBroadcast();
        Arcane(arcaneContract).mint();
        vm.stopBroadcast();
    }

    // impliment flipmood on chain
}
