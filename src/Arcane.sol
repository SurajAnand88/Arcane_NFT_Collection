// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {ERC721} from "../lib/openzepplin-contracts/contracts/token/ERC721/ERC721.sol";
import {console} from "forge-std/console.sol";
import {Base64} from "../lib/openzepplin-contracts/contracts/utils/Base64.sol";

contract Arcane is ERC721 {
    uint256 private s_nftMintCount;
    // mapping(uint256 => string) private s_tokenIdToUri;
    string private s_sadSvgImageUri;
    string private s_happySvgImageUri;
    mapping(uint256 => Mood) private s_tokenIdToMood;

    error Arcane__NotOwner();

    enum Mood {
        HAPPY,
        SAD
    }

    constructor(string memory happySvgImageUri, string memory sadSvgImageUri) ERC721("Arcane", "ARC") {
        s_nftMintCount = 0;
        s_happySvgImageUri = happySvgImageUri;
        s_sadSvgImageUri = sadSvgImageUri;
    }

    function mint() public {
        // s_tokenIdToUri[s_nftMintCount] = tokenUri;
        s_tokenIdToMood[s_nftMintCount] = Mood.SAD;
        _safeMint(msg.sender, s_nftMintCount);
        s_nftMintCount++;
    }

    function flipMood(uint256 tokenId) public view {
        //only Owner can flip the mood
        if (_isApprovedOrOwner(msg.sender, tokenId)) {
            revert Arcane__NotOwner();
        }

        if (s_tokenIdToMood[tokenId] == Mood.HAPPY) {
            s_tokenIdToMood[tokenId] == Mood.SAD;
        } else {
            s_tokenIdToMood[tokenId] == Mood.HAPPY;
        }
    }

    function _baseURI() internal pure override returns (string memory) {
        return "data:application/json;base64,";
    }

    function tokenURI(uint256 tokenId) public view override returns (string memory) {
        string memory imageURI;

        if (s_tokenIdToMood[s_nftMintCount] == Mood.HAPPY) {
            imageURI = s_happySvgImageUri;
        } else {
            imageURI = s_sadSvgImageUri;
        }

        return string(
            abi.encodePacked(
                _baseURI(),
                Base64.encode(
                    bytes(
                        abi.encodePacked(
                            '{"name":"',
                            name(),
                            '", "description":"A NFT that reflects the owners mood.", "attributes": [{"traits_type": "moodie", "value": 100}], "image":"',
                            imageURI,
                            '"}'
                        )
                    )
                )
            )
        );
    }

    function mintCount() public view returns (uint256) {
        return s_nftMintCount;
    }
}
