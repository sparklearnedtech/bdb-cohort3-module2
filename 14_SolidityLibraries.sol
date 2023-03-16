// SPDX-License-Identifier: NONE

pragma solidity ^0.8.9;

library SafeMath {
   function add(uint x, uint y) internal pure returns (uint) {
      uint total = x + y;
      // If total overflowed, throw an error
      require(total >= x, "uint overflow");
      return total;
   }
}

contract TestSafeMath {
   function testAdd(uint _x, uint _y) public pure returns (uint) {
      return SafeMath.add(_x, _y);
   }
}