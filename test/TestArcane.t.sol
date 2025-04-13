// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {Test} from "forge-std/Test.sol";
import {Arcane} from "src/Arcane.sol";
import {DeployArcane} from "script/DeployArcane.s.sol";
import {console} from "forge-std/console.sol";

contract TestArcane is Test {
    Arcane public arcane;
    DeployArcane public deployer;
    address public USER = makeAddr("User");
    string public constant CAP_NFT = "ipfs://QmaxE9yE2J7JatcxoFaXx4JF75MbT5KtDkknDLDUzanUwX";

    function setUp() public {
        deployer = new DeployArcane();
        arcane = deployer.run();
    }

    function testNameIsCorrect() public view {
        string memory expectedName = "Arcane";
        string memory actualName = arcane.name();
        // String are array of bytes so we can't compare them like primitive types like uint, int , address, etc.abi
        //Instead we can convert those strings to bytes using abi.encodePacked(arg) and hash these bytes using keccak256 and compare them
        bytes memory encodedExpName = abi.encodePacked(expectedName);
        bytes32 hashedExpName = keccak256(encodedExpName);
        bytes32 bytesActualName = keccak256(abi.encodePacked(actualName));

        assertEq(hashedExpName, bytesActualName);
    }

    function testSymbolIsCorrect() public view {
        string memory expectedSymbol = "ARC";
        string memory actualSymbol = arcane.symbol();

        bytes32 hashedExpSymbol = keccak256(abi.encodePacked(expectedSymbol));
        bytes32 hashedActualSymbol = keccak256(abi.encodePacked(actualSymbol));

        assertEq(hashedExpSymbol, hashedActualSymbol);
    }

    function testCanMintAndHaveBalance() public {
        vm.prank(USER);
        arcane.mint(CAP_NFT);
        uint256 tokenId = arcane.mintCount() - 1;

        string memory userTokenUri = arcane.tokenURI(tokenId);
        assertEq(keccak256(abi.encodePacked(userTokenUri)), keccak256(abi.encodePacked(CAP_NFT)));
        assertEq(arcane.ownerOf(tokenId), USER);
        assertEq(arcane.balanceOf(USER), 1);
    }
}
