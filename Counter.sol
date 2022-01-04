// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Counter{    // contract = class

    // uint = unsigned integer = 1,2,3,...
    uint count;

    // constuctor - runs when smart contract is deployed
    constructor() public{ 
        count = 0;
    }


    // functions make changes directly to Blockchain
    function getCount() public view returns(uint){   //by making public, we can access it outside the contract
        return count;
    }
    function incrementCount()public{
        count = count+1; 

    }


}

// Everytime this blockchain is deployed, we will pay the gas fees, so you will observe that
// our balance will go down
