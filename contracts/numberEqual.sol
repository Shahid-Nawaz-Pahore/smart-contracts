// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "contracts/erc20.sol";
contract Equal{
    
    uint public  n1;
    uint public n2;
    ShahidToken MYtoken;
    constructor(address _address){
       MYtoken=ShahidToken(_address);
    }
    event numberEqual(uint n1,uint n2 , string equal);
    function set(uint _n1,uint _n2)public {
        n1=_n1;
        n2=_n2;
    }
    function equal()public {
        if (n1==n2){
          emit numberEqual(n1, n2, "are equal");
          MYtoken.transfer(msg.sender, 20);
        }else {
            emit numberEqual(n1, n2, "are not equal");
        }

    }

}