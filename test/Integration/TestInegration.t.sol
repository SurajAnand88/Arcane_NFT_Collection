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

    string public constant SAD_SVG =
        "data:application/json;base64,eyJuYW1lIjoiQXJjYW5lIiwgImRlc2NyaXB0aW9uIjoiQSBORlQgdGhhdCByZWZsZWN0cyB0aGUgb3duZXJzIG1vb2QuIiwgImF0dHJpYnV0ZXMiOiBbeyJ0cmFpdHNfdHlwZSI6ICJtb29kaWUiLCAidmFsdWUiOiAxMDB9XSwgImltYWdlIjoiZGF0YTppbWFnZS9zdmcreG1sO2Jhc2U2NCxQSE4yWnlCM2FXUjBhRDBpTXpBd0lpQm9aV2xuYUhROUlqRTFNQ0lnZUcxc2JuTTlJbWgwZEhBNkx5OTNkM2N1ZHpNdWIzSm5Mekl3TURBdmMzWm5JajQ4WnlCcFpEMGljMkZrTFdWdGIycHBJajQ4WTJseVkyeGxJR040UFNJeU1qVWlJR041UFNJM05TSWdjajBpTlRBaUlHWnBiR3c5SWlOR1JrVkNNMElpSUhOMGNtOXJaVDBpSXpBd01DSWdjM1J5YjJ0bExYZHBaSFJvUFNJeUlpOCtQR05wY21Oc1pTQmplRDBpTWpFd0lpQmplVDBpTmpBaUlISTlJalVpSUdacGJHdzlJaU13TURBaUx6NDhZMmx5WTJ4bElHTjRQU0l5TkRBaUlHTjVQU0kyTUNJZ2NqMGlOU0lnWm1sc2JEMGlJekF3TUNJdlBqeHdZWFJvSUdROUlrMHlNVEFzTVRBd0lGRXlNalVzT0RBZ01qUXdMREV3TUNJZ2MzUnliMnRsUFNJak1EQXdJaUJ6ZEhKdmEyVXRkMmxrZEdnOUlqTWlJR1pwYkd3OUltNXZibVVpTHo0OEwyYytQQzl6ZG1jKyJ9";
    string public constant HAPPY_SVG =
        "data:application/json;base64,eyJuYW1lIjoiQXJjYW5lIiwgImRlc2NyaXB0aW9uIjoiQSBORlQgdGhhdCByZWZsZWN0cyB0aGUgb3duZXJzIG1vb2QuIiwgImF0dHJpYnV0ZXMiOiBbeyJ0cmFpdHNfdHlwZSI6ICJtb29kaWUiLCAidmFsdWUiOiAxMDB9XSwgImltYWdlIjoiZGF0YTppbWFnZS9zdmcreG1sO2Jhc2U2NCxQSE4yWnlCM2FXUjBhRDBpTXpBd0lpQm9aV2xuYUhROUlqRTFNQ0lnZUcxc2JuTTlJbWgwZEhBNkx5OTNkM2N1ZHpNdWIzSm5Mekl3TURBdmMzWm5JajQ4WnlCcFpEMGlhR0Z3Y0hrdFpXMXZhbWtpUGp4amFYSmpiR1VnWTNnOUlqYzFJaUJqZVQwaU56VWlJSEk5SWpVd0lpQm1hV3hzUFNJalJrWkZRak5DSWlCemRISnZhMlU5SWlNd01EQWlJSE4wY205clpTMTNhV1IwYUQwaU1pSXZQanhqYVhKamJHVWdZM2c5SWpZd0lpQmplVDBpTmpBaUlISTlJalVpSUdacGJHdzlJaU13TURBaUx6NDhZMmx5WTJ4bElHTjRQU0k1TUNJZ1kzazlJall3SWlCeVBTSTFJaUJtYVd4c1BTSWpNREF3SWk4K1BIQmhkR2dnWkQwaVRUVTFMRGt3SUZFM05Td3hNVEFnT1RVc09UQWlJSE4wY205clpUMGlJekF3TUNJZ2MzUnliMnRsTFhkcFpIUm9QU0l6SWlCbWFXeHNQU0p1YjI1bElpOCtQQzluUGo0OEwzTjJaejQ9In0=";

    function setUp() public {
        deployer = new DeployArcane();
        arcane = deployer.run();
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

    function testFlipMoodNft() public {
        vm.prank(USER);
        arcane.mint();
        vm.prank(USER);
        arcane.flipMood(0);

        assertEq(keccak256(abi.encodePacked(arcane.tokenURI(0))), keccak256(abi.encodePacked(SAD_SVG)));
    }
}
