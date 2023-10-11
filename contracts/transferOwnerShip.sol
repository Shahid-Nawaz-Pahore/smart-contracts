// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
interface IOwnable {
    function owner()external view returns(address);
    function transfer_ownership(address newOwner) external ;
}
contract myOwnerShip is IOwnable {
    address private contract_owner;

    constructor(){
        contract_owner=msg.sender;
    }
    function owner()external view override  returns(address){
         return contract_owner;
    }
    function transfer_ownership(address newOwner) external override  {
         require(msg.sender==contract_owner,"you are not owner");
         require(newOwner !=address(0),"new owner address can not equal zero address");
         contract_owner=newOwner;
    }

}