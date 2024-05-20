// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Calculator {
    int x;
    int y;
    // int add;
    // int substract;
    // int multiply;
    // int divide;
    address owner;

    constructor(address _owner, int _x, int _y) {
        owner = _owner;
        x = _x;
        y = _y;

    }

    modifier IsOwner{
        require(msg.sender == owner, "only owners can access this") ;
        _;
}

    function X(int _number) public view returns (bool) {
        _number = x;
        return true;
    }

    function Y(int _number) public view returns (bool) {
        _number = y;
        return true;
    }

    function addition(int add) public view returns(int) {
     add = x + y;
     return add;
    //  y >= 100? revert("The number is too low") : revert("Loading..");
     
    }
    function substraction(int substract) public view returns(int) {
     substract = x - y;
     return substract;
    }
    function multiplication(int multiply) public view returns(int) {
     multiply = x * y;
     return multiply;
    }
    function division(int divide) public view returns(int) {
     divide = x / y;
     return divide;
    }
}