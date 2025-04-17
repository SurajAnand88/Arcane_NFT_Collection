// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {Script} from "forge-std/Script.sol";
import {DevOpsTools} from "../lib/foundry-devops/src/DevOpsTools.sol";
import {Arcane} from "src/Arcane.sol";

contract MintArcaneNFT is Script {
    string public constant CAP_NFT = "ipfs://QmaxE9yE2J7JatcxoFaXx4JF75MbT5KtDkknDLDUzanUwX";

    function run() external {
        address mostRecenctDeployedContract = DevOpsTools.get_most_recent_deployment("Arcane", block.chainid);
        mintNftOnContract(mostRecenctDeployedContract);
    }

    function mintNftOnContract(address arcaneContract) public {
        vm.startBroadcast();
        Arcane(arcaneContract).mint();
        vm.stopBroadcast();
    }
}
