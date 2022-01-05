// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;



//Mapping - A Key Value Store

contract Mappings{ 
    mapping(uint => string) public names;
    mapping(uint => Book) public books;
    //complex mapping
    mapping(address => mapping(uint => Book)) public myMapping;

    constructor(){ 
        names[1] = "Akshit";
        names[2] = "Aasif";
        names[3] = "Karan";
    }


    struct Book{
        string title;
        string author;
    }

    function addBook(uint id, string memory title, string memory author)public{ 
        books[id] = Book(title, author); 
        
    
    }

    function addComplexBook(uint id, string memory title, string memory author)public{ 
        myMapping[msg.sender][id] = Book(title, author);
    }


}
