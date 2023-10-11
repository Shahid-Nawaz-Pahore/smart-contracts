// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract sumproduct{
    uint256[] public  product;
    uint public sum;
    function getProduct(uint256 price) public   {
        product.push(price);
        sum+=price;
    }
    function last() public view returns (uint){
      return product[product.length-1];
    }
    
    



    
}