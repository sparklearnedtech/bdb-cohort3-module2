// SPDX-License-Identifier: NONE

pragma solidity ^0.8.9;

interface SomeERC20Functions {
    function balanceOf(address account) external view returns (uint256);
}

contract MyContract {
    SomeERC20Functions externalContract;

    constructor(address _externalContract) {
        // Initialize a SomeERC20Functions contract instance
        externalContract = SomeERC20Functions(_externalContract);
    }

    function displayBalance() public view returns (uint) {
        // balance of tokens in the external ERC20 contract
        return externalContract.balanceOf(msg.sender);
    }
}