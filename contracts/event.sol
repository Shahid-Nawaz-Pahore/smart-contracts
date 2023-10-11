// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract A{

    event log(address indexed from,address indexed  to,uint  amount);

    function set(address b, uint m) public{
        emit log(msg.sender,b,m);
    }
}