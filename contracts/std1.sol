// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./erc20.sol";
contract student{
      ShahidToken myToken;
    constructor(address my) {
       myToken= ShahidToken(my) ;
    }
    string name;
    uint rollno;
    uint marks;
    string public result;
    function setData(string memory Name, uint Rollno, uint Marks)public{
        name = Name;
        rollno= Rollno;
        marks = Marks;
        if(Marks>50){
            result = "pass";
            myToken.transfer(msg.sender, 100);
        }
        else 
        result = "fail";
    }
}