// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./erc20.sol";
// write a program that input data of 5 students 
// each student has a name, father name, class, rollno, marks, result 
// check if the student has marks greater than 30, they are passed 
// else failed 
// bool result = true /false --> if true then pass, if false, then fail

// if std[i].result == true then transfer 20 erc20 tokens to his account 
// if fail then nothing 

// first, create erc20 token 

// then, initialise erc20 token in Result class (constructor) 
// 


contract Result{
    ShahidToken   _Token;
    constructor(address myToken){
        
        _Token =  ShahidToken(myToken);
    } 

   struct Student{
      string name;
      string father_name;
      uint marks;
      uint rollno;
      string result;
   }
   Student[2] public std;


   
   function setData(string[2] memory Name, string[2] memory fname, uint[2] memory m , uint[2] memory roll)public  {
    for (uint i=0;i<2;i++){
        std[i].name=Name[i];
        std[i].father_name=fname[i];
        std[i].marks=m[i];
        std[i].rollno=roll[i];

        if(std[i].marks>=30){
            std[i].result= "pass";
            _Token.transfer(msg.sender  , 10);
            
        }else {
            std[i].result="fail";
        }
    }
   }

}