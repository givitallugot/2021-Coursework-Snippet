pragma solidity ^0.6.0;

contract Mycontract {
    mapping (uint => string) public names;
    mapping (uint => Books) public books;
    
    struct Books {
        string title;
        string author;
    }
    
    constructor() public {
        names[1] = "Kim";
        names[2] = "Park";
        names[3] = "Lee";
    }
    
    function addBook(uint id, string memory _title, string memory _author) public {
        books[id] = Books(_title, _author);
    }
}