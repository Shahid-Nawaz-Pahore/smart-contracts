// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract student{
    struct Std{
        string name;
        uint rollno;
        uint marks;
        string result;
    }
    Std[] public std;
    function setData(string memory Name,uint Rollno, uint Marks)public{
        if(Marks>50){
            std.push()=Std(Name,Rollno,Marks, "pass");
        }
        else 
        std.push()=Std(Name,Rollno,Marks, "fail");
    }
    function checkResult()public view returns(Std[]memory Storage){
        return std;
    }
}