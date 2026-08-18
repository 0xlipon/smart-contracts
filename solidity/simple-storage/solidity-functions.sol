// SPDX-License-Identifier: MIT
pragma solidity ^0.8.36; // solidity versions

contract SimpleStorage {

   uint favouriteNumber;  // default value 0 if not initialized

   function store(uint256 _favouriteNumber) public{
    favouriteNumber = _favouriteNumber; // set favouriteNumber variable to whatever _favouriteNumber variable parse
   }

}
