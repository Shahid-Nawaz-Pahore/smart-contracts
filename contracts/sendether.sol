// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;
import "contracts/erc20.sol";
contract sendEther{
    struct Employ{
        string name;
        uint age;
        uint wh; 
        
    }
    ShahidToken myToken;
    constructor(address my) {
       myToken= ShahidToken(my) ;
    }

    Employ[] public  emp;

    function set(string memory _name,uint _age,uint _wh) public{
            emp.push(Employ({
                name: _name,
                age: _age,
                wh: _wh
                
            }));    
    }
    function sen()public {
        for(uint i=0;i<emp.length;i++){
            myToken.transfer( msg.sender , 1);
        }
    }
}