// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;


contract Payments{ 

    //initials
    address payable public owner ;
    enum Statuses { Vacant, Occupied}
    Statuses currentStatus;


    //constructor
    constructor() public{
        owner = msg.sender;
        currentStatus = Statuses.Vacant;
    }


    //event
    event Occupy(address _occupant, uint amt);


    
    //modifiers
    modifier onlyIfVacant{ 
        //Check Status
        require(currentStatus==Statuses.Vacant, "Currently Occupied");
        _;
    }
    modifier costs(uint amount){ 
        //Check Price
        require(msg.value>= amount, "Not enough Ethers Provided");
        _;
    }


    //transfer amount and set occupied
    receive() external payable onlyIfVacant costs(2 ether){ 

        currentStatus = Statuses.Occupied;
        owner.transfer(msg.value); 
        emit Occupy(msg.sender, msg.value);


    }
}
