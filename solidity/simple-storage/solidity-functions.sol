// SPDX-License-Identifier: MIT
pragma solidity ^0.8.36; // solidity versions

contract SimpleStorage {

   uint public favouriteNumber;  // default value 0 if not initialized // default visibility internal

   function store(uint256 _favouriteNumber) public{
    favouriteNumber = _favouriteNumber; // set favouriteNumber variable to whatever _favouriteNumber variable parse
   }

   // view - can read state, cannot modify state
   // pure - cannot read or modify state
   function retrive() public view returns(uint256){
      return favouriteNumber; // view
   }
   function retriveme() public pure returns(uint256){
      return 7; // pure
   }

}
