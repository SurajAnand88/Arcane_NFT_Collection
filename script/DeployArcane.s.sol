// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Script, console} from "forge-std/Script.sol";
import {Arcane} from "src/Arcane.sol";
import {Base64} from "../lib/openzepplin-contracts/contracts/utils/Base64.sol";

contract DeployArcane is Script {
    Arcane public arcane;

    function run() external returns (Arcane) {
        string memory sadSvg = vm.readFile("./img/sad.svg");
        string memory happySvg = vm.readFile("./img/happy.svg");

        console.log(sadSvg);
        console.log(happySvg);

        vm.startBroadcast();
        arcane = new Arcane(convertSvgToImageUri(happySvg), convertSvgToImageUri(sadSvg));
        vm.stopBroadcast();
        return arcane;
    }

    function convertSvgToImageUri(string memory svg) public pure returns (string memory) {
        string memory baseUrl = "data:image/svg+xml;base64,";
        string memory svgBase64Encode = Base64.encode(bytes(string(abi.encodePacked(svg))));
        return string(abi.encodePacked(baseUrl, svgBase64Encode));
    }
}
