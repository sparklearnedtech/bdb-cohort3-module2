// SPDX-License-Identifier: NONE

pragma solidity ^0.8.9;

contract ConstructorContract {
   string public name;

   // NOTE: You will need to provide a string argument when deploying the contract
   constructor(string memory _name) {
      // This will be set immediately when the contract is deployed
      name = _name;
   }
}

