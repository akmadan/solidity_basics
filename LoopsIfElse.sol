// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


contract LoopsIfElse{
    uint[] public numbers= [1,2,3,4,5,6,7,8];
    address public owner; 

    constructor(){ 
        owner = msg.sender;
    }

    function countEvenNumbers() public view returns(uint){ 
        uint count = 0;
        for (uint i = 0; i<numbers.length; i++){ 
            if(numbers[i]%2==0){ 
                count=count+1;
        }
        

    }
    return count;
    }



    function checkEven(uint no)public{ 
        if(no%2==0){ 
            return true;
        }
        else{
            return false;
        }
    }
}
