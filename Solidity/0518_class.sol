pragma solidity ^0.4.24;

contract class{
    
    uint public stu_ID;
    string public stu_Name;
    
    function setClass (uint _stu_ID, string _stu_Name) public {
        stu_ID = _stu_ID;
        stu_Name = _stu_Name;
    }
    
    function getClass () public view returns (uint, string) {
        return (stu_ID, stu_Name);
    }
}