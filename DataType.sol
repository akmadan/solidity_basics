// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract DataTypes{ 
    // State Variables
    // Local Variables


    uint public value = 10; //State    // uint is by default uint256
    int public value2 = -5; //State


    string public myString  = "Hello Worlld";//String Data Type

    address myaddress = 0x75936a0c47FeCEf2367BF8d16901C0B9A9c432b2; //address

    struct MyStruct { 
        uint myUint; 
        string myString;
    }

    MyStruct public myStruct  = MyStruct(1, "Hello");


    function getValue() public pure returns(uint){ 
        uint a = 5; // Local 
        return a;
    }
}
