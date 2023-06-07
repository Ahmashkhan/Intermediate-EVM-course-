// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract AdminOnlyContract {
    address public admin;

    constructor() {
        admin = msg.sender;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only the admin can access this function.");
        _;
    }

    function adminOnlyFunction() external view onlyAdmin returns (string memory) {
        return "This function can only be accessed by the admin.";
    }

     
}