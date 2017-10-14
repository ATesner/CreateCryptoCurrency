pragma solidity ^0.4.0;

contract TheToken {

    // contain all balances
    mapping(address => uint) balances;

    //constructor
    function TheToken(uint initSupply) {
        balances[msg.sender] = initSupply; //give to the creator all the token
    }

    //to send token to someone
    function transfer(address _to, uint256 _value) {

        require(balances[msg.sender] >= _value); //check if the sender has enough
        require(_value > 0); //check if the amount is positive
        balances[msg.sender] -= _value;
        balances[_to] += _value;
    }
}