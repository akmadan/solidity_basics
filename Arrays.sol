// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Arrays{ 

    //Array
    uint [] public myArray = [1,2,3];
    string [] public stringArray = ["Apple", "Solana", "Bitcoin"];
    string [] public emptyArray;



    //function to add element
    function addValue(string memory _value){ 
        emptyArray.push(_value);

    }


    //function to get array length
    function arrayLength() public view returns(uint){ 
        return emptyArray.length;
    }

}
