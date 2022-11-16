//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BankAccount{

    mapping(address => uint) private balances;

    constructor(){
        balances[msg.sender] = 1000;
    }

    function deposit(uint _amount) public{
        balances[msg.sender] += _amount;
    }

    function withdraw(uint _amount) public{

        require(balances[msg.sender]>=_amount, "insufficient balance");

        balances[msg.sender]-=_amount;
    }

    function showBalance() public view returns(uint){
        return(balances[msg.sender]);
    }

}
