// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Counter {

    function counter(int number) public pure returns(int) {
        for(number = 0; number < 10; number ++){
            number ++;
        }

        for(number = 10; number >= 10; number --){
            number --;
        }
        return number;
    }
    
}