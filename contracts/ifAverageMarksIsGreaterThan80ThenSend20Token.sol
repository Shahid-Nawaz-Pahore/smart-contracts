// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "contracts/erc20.sol";
contract ifAverageMarksIsGreaterThan80ThenSend20Token{
    uint public  sub1;
    uint public sub2;
    uint public sub3;
    ShahidToken myToken;
    constructor(address Address){
     myToken=ShahidToken(Address);
    }
    event show(uint sub1,uint sub2,uint sub3, string check);
    function set(uint _sub1,uint _sub2,uint _sub3)public {
       sub1=_sub1;
       sub2=_sub2;
       sub3=_sub3;
    }
    function check()public {
     if((sub1+sub2+sub3)/3>=80){
        emit show(sub1,sub2,sub3,"Congratulation your average marks are greater than 80%");
        myToken.transfer( msg.sender, 20);
     }else {
        emit show(sub1,sub2,sub3,"your average marks are less than 80%");
     }
    }

}