// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
//import "@openzeppelin/contracts@5.0.0/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts@5.0.0/token/ERC721/extensions/ERC721URIStorage.sol";
//import "@openzeppelin/contracts@5.0.0/token/ERC721/extensions/ERC721Burnable.sol";
contract ShahidToken is ERC20{
  constructor(uint256 initialSupply)ERC20("ShahidToken","ST"){
    _mint(msg.sender,initialSupply);
  }
}
contract ShahidNFT is ERC721, ERC721URIStorage {
    constructor()
        ERC721("ShahidNFT", "S")
     
    {}

    function safeMint(address to, uint256 tokenId, string memory uri)
        public
    {
        _safeMint(to, tokenId);
        _setTokenURI(tokenId, uri);
    }

    // The following functions are overrides required by Solidity.

    function tokenURI(uint256 tokenId)
        public
        view
        override(ERC721, ERC721URIStorage)
        returns (string memory)
    {
        return super.tokenURI(tokenId);
    }

    function supportsInterface(bytes4 interfaceId)
        public
        view
        override(ERC721, ERC721URIStorage)
        returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }
}

contract NFTMarket {
    ShahidNFT public nft;
    ShahidToken public token;

    uint256 public constant PRICE = 100;

    constructor(address _nft, address _token) {
        nft = ShahidNFT(_nft);
        token = ShahidToken(_token);
    }

    function buyNFT(uint256 _tokenId) public {
        require(token.balanceOf(msg.sender) >= PRICE, "Not enough tokens");
        require(nft.ownerOf(_tokenId) == address(this), "NFT not in contract");

        token.transferFrom(msg.sender, address(this), PRICE);
        nft.transferFrom(address(this), msg.sender, _tokenId);
    }
}
//contract
//0xb7bb1792BBfabbA361c46DC5860940e0E1bFb4b9
//token
//0xBBa767f31960394B6c57705A5e1F0B2Aa97f0Ce8
//nft
//0x09943Fa8DD32C76f7b880627a0F6af73e8f5A595