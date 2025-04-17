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

    // function testCanMintAndHaveBalance() public {
    //     vm.prank(USER);
    //     arcane.mint(CAP_NFT);
    //     uint256 tokenId = arcane.mintCount() - 1;

    //     string memory userTokenUri = arcane.tokenURI(tokenId);
    //     assertEq(keccak256(abi.encodePacked(userTokenUri)), keccak256(abi.encodePacked(CAP_NFT)));
    //     assertEq(arcane.ownerOf(tokenId), USER);
    //     assertEq(arcane.balanceOf(USER), 1);
    // }

    function testConvertSvgToUri() public view {
        string memory expectedUri =
            "data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzAwIiBoZWlnaHQ9IjE1MCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj48ZyBpZD0iaGFwcHktZW1vamkiPjxjaXJjbGUgY3g9Ijc1IiBjeT0iNzUiIHI9IjUwIiBmaWxsPSIjRkZFQjNCIiBzdHJva2U9IiMwMDAiIHN0cm9rZS13aWR0aD0iMiIvPjxjaXJjbGUgY3g9IjYwIiBjeT0iNjAiIHI9IjUiIGZpbGw9IiMwMDAiLz48Y2lyY2xlIGN4PSI5MCIgY3k9IjYwIiByPSI1IiBmaWxsPSIjMDAwIi8+PHBhdGggZD0iTTU1LDkwIFE3NSwxMTAgOTUsOTAiIHN0cm9rZT0iIzAwMCIgc3Ryb2tlLXdpZHRoPSIzIiBmaWxsPSJub25lIi8+PC9nPj48L3N2Zz4=";
        string memory svg =
            '<svg width="300" height="150" xmlns="http://www.w3.org/2000/svg"><g id="happy-emoji"><circle cx="75" cy="75" r="50" fill="#FFEB3B" stroke="#000" stroke-width="2"/><circle cx="60" cy="60" r="5" fill="#000"/><circle cx="90" cy="60" r="5" fill="#000"/><path d="M55,90 Q75,110 95,90" stroke="#000" stroke-width="3" fill="none"/></g>></svg>';

        string memory actualUri = deployer.convertSvgToImageUri(svg);
        assertEq(keccak256(abi.encodePacked(expectedUri)), keccak256(abi.encodePacked(actualUri)));
    }
}
