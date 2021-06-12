pragma solidity ^0.5.0;

contract token {
    mapping (address => uint) public coinBalanceOf;
    event coinTransfer(address sender, address receiver, uint amount);
    
    function tokenC (uint supply) public {
        coinBalanceOf[msg.sender] = supply;
    }
    
    function sendCoin(address receiver, uint amount) public returns(bool sufficient) {
        if (coinBalanceOf[msg.sender] <= amount) return false;
        coinBalanceOf[msg.sender] -= amount;
        coinBalanceOf[receiver] +=  amount;
        emit coinTransfer(msg.sender, receiver, amount);
        return true;
    }
}