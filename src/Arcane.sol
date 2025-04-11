// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {ERC721} from "../lib/openzepplin-contracts/contracts/token/ERC721/ERC721.sol";

contract Arcane is ERC721 {
    uint256 private s_nftMintCount;
    mapping(uint256 => string) private s_tokenIdToUri;

    constructor() ERC721("Arcane", "ARC") {
        s_nftMintCount = 0;
    }

    function mint(string memory tokenUri) public {
        s_tokenIdToUri[s_nftMintCount] = tokenUri;
        _safeMint(msg.sender, s_nftMintCount);
        s_nftMintCount++;
    }

    function tokenURI(uint256 /*tokenUri*/ ) public pure override returns (string memory) {
        return "ipfs://QmPMc4tcBsMqLRuCQtPmPe84bpSjrC3Ky7t3JWuHXYB4aS/8929";
    }

    function mintCount() public view returns (uint256){
        return s_nftMintCount;
    }
}
