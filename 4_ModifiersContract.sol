// SPDX-License-Identifier: NONE

pragma solidity ^0.8.9;

contract ModifiersContract {
   address public owner;

   // Set the contract deployer as the owner of the contract
   constructor() {
      owner = msg.sender;
   }

   // Create a modifier that only allows a function to be called by the owner
   modifier ownerOnly() {
      require(msg.sender == owner, "You are not the owner");


      // Underscore is a special character used inside modifiers
      // This tells Solidity to execute the function the modifier is used on at this point
      // Therefore, this modifier will first perform the above check
      // Then run the rest of the code
      _;
   }


   // Create a function and apply the ownerOnly modifier on it
   function ownerChange(address _newOwner) public ownerOnly {
       owner = _newOwner;
   }
}