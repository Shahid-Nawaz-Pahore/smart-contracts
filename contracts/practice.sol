// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

// write a program that input data of 5 students 
// each student has a name, father name, class, rollno, marks, result 
// check if the student has marks greater than 30, they are passed 
// else failed 
// bool result = true /false --> if true then pass, if false, then fail

contract Result{
   struct Student{
      string name;
      string father_name;
      uint marks;
      uint rollno;
      string result;
   }
   Student[5] public std;
   function setData(string[5] memory Name, string[5] memory fname, uint[5] memory m , uint[5] memory roll )public  {
    for (uint i=0;i<5;i++){
        std[i].name=Name[i];
        std[i].father_name=fname[i];
        std[i].marks=m[i];
        std[i].rollno=roll[i];

        if(std[i].marks>=30){
            std[i].result="pass";
        }else {
            std[i].result="fail";
        }
    }
   }

}