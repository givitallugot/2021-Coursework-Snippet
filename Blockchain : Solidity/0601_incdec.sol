pragma solidity ^0.7.6;


contract Count {
    uint public countnum;
    
    function get() public view returns (uint) {
        return countnum;
    }
    
    function inc() public {
        countnum += 2;
    }
    
    function dec() public {
        countnum -= 1;
    }
}