// SPDX-License-Identifier: NONE

pragma solidity ^0.8.9;

// Import Hello.sol from same directory
import "./Hello.sol";

contract Import {
   // Initialize Hello contract
   Hello public hello = new Hello();

   function getGreetings() public view returns (string memory) {
      return hello.greet();
   }
}