// SPDX-License-Identifier: NONE

pragma solidity ^0.8.9;

contract FunctionsContract {
    // state variable to be modified by sample functions below
    uint public num;

    // modifies num state variable
    function setNum(uint _num) public {
        num = _num;
    }

    // returns the value of the state variable num
    function getNum() public view returns (uint) {
        return num;
    }
}