// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
contract MyContract {
    uint public myVariable;

    function myViewFunction() public view returns (uint) {
        // Access and read contract state variables
        return myVariable;
    }

    function myPureFunction(uint a, uint b) public pure returns (uint) {
        // Perform computations without accessing contract state variables
        return a + b;
    }

    function myPayableFunction() public payable {
        // Accept Ether and modify contract state variables
        myVariable = msg.value;
    }
}

contract MyDerivedContract is MyContract {
    function myDerivedFunction() public view returns (uint) {
        // Access view function from the base contract
        return myViewFunction();
    }
}