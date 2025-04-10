// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {ERC721} from "../lib/openzepplin-contracts/contracts/token/ERC721/ERC721.sol";

contract Arcane is ERC721 {
    uint256 private s_nftMintCount;

    constructor() ERC721("QuantumRebels", "QTMR") {
        s_nftMintCount = 0;
    }

    function mint() public {}

    function tokenURI() public pure override returns (string memory) {
        return "ipfs://QmPMc4tcBsMqLRuCQtPmPe84bpSjrC3Ky7t3JWuHXYB4aS/8929";
    }
}
