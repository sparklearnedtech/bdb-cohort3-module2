// SPDX-License-Identifier: NONE

pragma solidity ^0.8.9;

/*
   Inheritance graph

      One
     /  \
   Two  Three
     \  /
      \/
     Four
*/

contract One {
	// virtual keyword enables the function to be overridden by a child contract
	function get() public pure virtual returns (uint) {
		return 1;
	}
}

// contract Two inherits contract One through the "is" keyword
contract Two is One {
	// override One.get();
	// with virtual, this contract can still be overriden by further children
	function get() public pure virtual override returns (uint) {
		return 2;
	}
}

// contract Three inherits contract One as well
contract Three is One {
	// same with contract Two
	// overrides One.get();
	// and can be overriden by further children through virtual keyword
	function get() public pure virtual override returns (uint) {
		return 3;
	}
}

// multiple inheritance: contract Four inherits contracts Two and Three
contract Four is Two, Three {
	function get() public pure override (Two, Three) returns (uint) {
      // super keyword is used to call functions from the parent contract
		// Note: When inheriting multiple contracts, if a function is defined
		// several times, the right-most parent contract's function is used.
		// So for this case, super.get() returns uint 3 from Three.get().
		return super.get();
	}
}