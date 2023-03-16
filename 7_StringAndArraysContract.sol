// SPDX-License-Identifier: NONE

pragma solidity ^0.8.9;


contract StringAndArraysContract {
   // String
   string public greet = "Hello World!"; // enclosed by either "",'', or ``

   // Arrays
   uint[] public arr1;            // []
   uint[] public arr2 = [4,5,6];  // [4,5,6]
   uint[10] public fixedSizeArr;  // [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

   function get(uint i) public view returns (uint) {
      // returns the item of arr2 at index i.
      // example: if get(1), arr2[1] = 5
      return arr2[i];
   }

   // memory means value is only stored in memory, not on the blockchain
   // memory variables exists temporarily, only during function execution
   // simple analogy: RAM = memory, Hard Disk = blockchain
   function arrM(uint[] memory _arr) public pure returns (uint[] memory) {
      return _arr;
   }

   function strM() public view returns (string memory) {
      return greet;
   }

   function arrF(uint i) public {
      // .push() adds an item to an array
      arr1.push(i);

      // .pop() removes the last element of an array
      arr1.pop();

      // .length returns the length of an array
      uint arr1Length = arr1.length; // 0

      // delete key word resets the value at index to its default value
      uint index = 2;
      delete arr2[index]; // [4,5,0]
   }
}
}