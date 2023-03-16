// SPDX-License-Identifier: NONE

pragma solidity ^0.8.9;

contract LoopsAndIfElse {
   // For Loop
   function forLoopSample() public pure {
      uint num = 0;

      for (uint i = 0; i < 10; i++) {
         num++;
      }  
   }

   // While Loop
   function whileLoopSample() public pure {
      uint num = 0;
      bool whileTrue = false;

      while (whileTrue) {
         num++;
      }
   }

   // If/Else
   function ifElseSample(uint x) public pure returns (uint) {
      if (x < 10) {
         return 0;
      } else if (x < 20) {
         return 1;
      } else {
         return 2;
      }
   }
}