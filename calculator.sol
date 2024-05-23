// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Calculator {
    int x;
    int y;
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

    function addition() public view returns(int) {
     int add = x + y;
     return add;     
    }

    function substraction() public view returns(int) {
     int substract = x - y;
     return substract;
    }
    function multiplication() public view returns(int) {
     int multiply = x * y;
     return multiply;
    }
    function division() public view returns(int) {
     int divide = x / y;
     return divide;
    }
}