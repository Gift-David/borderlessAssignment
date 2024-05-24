// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Counter {
    int public number;

    constructor(int _number) {
        number = _number;
    }

    function increase() public returns(int) {
       for(int i = 0; i < 10; i++){
            number++;
        }
        return number;
        
    }

    function decrease() public returns(int) {
        for(int i = 10; i > 10; i--){
            number--;
        }
        return number;
    }
    
}
