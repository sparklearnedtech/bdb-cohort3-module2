// SPDX-License-Identifier: NONE

pragma solidity ^0.8.9;

contract VariablesContract {
    // State variables

    // uint = unsigned integers
    uint8 public u8 = 12;
    uint16 public u16 = 123;
    uint public u256 = 1234;

    // int = signed integers
    int public i = -123;

    // enum = enumerable
    enum status {
        Pending,
        Sent,
        Received,
        Rejected,
        Cancelled
    }

    // address = Ethereum address
    address public addr = 0xCa84B6581D325e6a497d875c4CA093AC3Ba2cCAf;

    // bool = boolean
    bool public bool1 = true;

    // default variables
    bool public defaultBool; // bool by default is false
    uint public defaultUint; // uint by default is 0
    int public defaultInt; // int by default is 0
    address public defaultAddr; // address by default is 0x0000000000000000000000000000000000000000

    function sampleFn() public {
        // Local variable

        uint ui = 826; // variable only accessible within sampleFn()


        // Global variables (block.timestamp and msg.sender)
        uint tStamp = block.timestamp;
        address sender = msg.sender;
    }
}