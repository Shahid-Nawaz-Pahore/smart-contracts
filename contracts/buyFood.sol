// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract buyFood {
    struct Memo{
       string name;
       string message;
       uint timestamp; 
       address from;
    }
 Memo[] memo;
 address payable owner;
 constructor(){
    owner=payable(msg.sender);
 }
function buy(string memory name_,string memory message_) public  payable {
   require(msg.value>0,"please pay greater than 0 ether");
   owner.transfer(msg.value);
   memo.push(Memo(name_,message_,block.timestamp,msg.sender));
}
function getMemo()public view returns (Memo[] memory){
    return memo;
}


}
