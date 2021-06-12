pragma solidity ^0.4.26;

contract BankAccount {
    
    uint private balance;
    address public owner;
    
    function Bankcontract() public {
        owner = msg.sender;
    }
    
    function deposite() public payable {
        balance += msg.value;
    }
    
    function withdraw(uint amount) public {
        if(msg.sender == owner && balance >= amount) {
            balance -= amount;
        if(!msg.sender.send(amount)) {
            balance;
        }
        }
    }
    
    function getBalance() public view returns(uint) {
        return balance;
    }
}