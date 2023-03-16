// SPDX-License-Identifier: NONE

pragma solidity ^0.8.9;

contract SendReceiveEther {
    // Send

    // transfer method - no longer recommended
    function sendViaTransfer(address payable _to) public payable {
        _to.transfer(msg.value);
    }

    // send method - no longer recommended
    function sendViaSend(address payable _to) public payable {
        // Send returns a boolean value indicating success or failure.
        bool sent = _to.send(msg.value);
        require(sent, "Failed to send Ether");
    }

    // call method
    function sendViaCall(address payable _to) public payable {
        // Call returns a boolean value indicating success or failure.
        // This is the current recommended method to use.
        (bool sent, bytes memory data) = _to.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
    }

    // Receive
    /*
    Which function is called, fallback() or receive()?

           send Ether
               |
         msg.data is empty?
              / \
            yes  no
            /     \
    receive() exists?  fallback()
         /   \
        yes   no
        /      \
    receive()   fallback()
    */

    // Function to receive Ether. msg.data must be empty
    receive() external payable {}

    // Fallback function is called when msg.data is not empty
    fallback() external payable {}

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}