// SPDX-License-Identifier: NONE

pragma solidity ^0.8.9;

contract StructsContract {
    // Create struct
    struct GroceryItem {
        string item;
        uint quantity;
        bool check;
    }

    // Declare struct
    GroceryItem[] public groceries;

    // Add an item to groceries array
    function addGrocery(string memory _item, uint _quantity) public {
        groceries.push(GroceryItem(_item, _quantity, false));

        // Other Methods:

        // Method 2
        // groceries.push(GroceryItem({item: _item, quantity: _quantity, check: false}));

        // Method 3
		// GroceryItem memory grocery;
		// grocery.item = _item;
		// grocery.quantity = _quantity;
		// grocery.check = false;
		// groceries.push(grocery);
    }

    // Update item
    function updateItem(uint _index, string memory _item) public {
        groceries[_index].item = _item;
    }

    // Update quantity
    function updateQuantity(uint _index, uint _quantity) public {
        groceries[_index].quantity = _quantity;
    }

    // Toggle check
    function toggleCheck(uint _index) public {
        groceries[_index].check = !groceries[_index].check; // ! is a NOT operator
    }
}