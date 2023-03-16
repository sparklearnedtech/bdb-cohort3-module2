// SPDX-License-Identifier: NONE

pragma solidity ^0.8.9;

contract MappingsContract {
   // declare mapping through: mapping(keyType => valueType)
   mapping(address => uint) public age;

   // returns the age of the inputted address
   function getAge(address _addr) public view returns (uint) {
      return age[_addr];
   }

   // modifies the user address' age
   function setAge(address _addr, uint _i) public {
      age[_addr] = _i;
   }

   // resets the value of the age of an inputted address
   function removeAge(address _addr) public {
      delete age[_addr];
   }
}