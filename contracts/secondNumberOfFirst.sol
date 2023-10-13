// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "contracts/erc20.sol";
contract squreOfFirst{
    ShahidToken myToken;
    constructor(address add){
        myToken=ShahidToken(add);
    }
    uint public  a;
    uint public b;
    event show(uint a, uint b, string check);
    function set(uint x, uint y) public {
        a=x;
        b=y;
    }
    function check() public {
        uint s=a*a;
        if (s==b){
           emit show(a,b,"First number is squre of second number");
           myToken.transfer(msg.sender, 20);
        }else {
             emit show(a,b,"First number is not squre of second number");
        }
    }
}