// SPDX-License-Identifier: NONE

pragma solidity ^0.8.9;

contract EventsContract {
   // Declare an event which logs an address and a string
   event TestCalled(address sender, string message);

   function test() public {
      // Log an event
      emit TestCalled(msg.sender, "test() function is called");
   }
}