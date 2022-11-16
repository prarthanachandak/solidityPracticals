//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract StudentData{

    struct student{
        uint rollno;
        string fname;
        string lname;
    }

    int public count = 0;

    student[] public students;

    function addStudent(uint _rollno, string memory _fname, string memory _lname) public{
        count+=1;
        students.push(student(_rollno, _fname, _lname));
    }

    event log(string func, address sender, uint value, bytes data);

    fallback() external payable{
        emit log("fallback", msg.sender, msg.value, msg.data);
    }

    receive() external payable{
        emit log("receive", msg.sender, msg.value, "");
    }
    

}
