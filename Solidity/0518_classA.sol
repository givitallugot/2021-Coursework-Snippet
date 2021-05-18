pragma solidity ^0.4.24;

contract classA{
    
    uint public stu_ID;
    string public stu_Name;
    string public stu_Dept;
    
    function setClass (uint _stu_ID, string _stu_Name, string _stu_Dept) public {
        stu_ID = _stu_ID;
        stu_Name = _stu_Name;
        stu_Dept = _stu_Dept;
    }
    
    function getClass () public view returns (uint, string, string) {
        return (stu_ID, stu_Name, stu_Dept);
    }
}

