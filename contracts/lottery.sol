// SPDX-License-Identifier: MIT
pragma solidity  >=0.7.0 <0.9.0;
import "contracts/erc20.sol";
 contract Lottery{
    address payable[] public Players;
    address  manager;
    address payable public Winner;
    constructor(){
        manager=msg.sender;
    }
    receive() external payable { 
        require(msg.value==1 ether,"please send just one ether");
        Players.push(payable(msg.sender));
    }
    function getBlance()public  view returns(uint){
        require(manager==msg.sender,"you are not manager");
        return address(this).balance;
    }
    function random()internal view returns(uint){
        return uint(keccak256(abi.encodePacked(block.difficulty,block.timestamp,Players.length)));
    }
    function getWinner()public {
        require(msg.sender==manager,"You are not the manager");
        require(Players.length>=3,"Player are less than 3");
        uint r=random();
        uint index=r%Players.length;
        Winner=Players[index];
        Winner.transfer(getBlance());
        Players=new address payable[](0);
    }
    function getPlayer()public view returns(address payable[] memory){
        return Players;
    }
 }