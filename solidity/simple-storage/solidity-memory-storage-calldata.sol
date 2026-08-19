// SPDX-License-Identifier: MIT
pragma solidity ^0.8.36;

contract SimpleStorage {

   uint256 myFavouriteNumber; // myFavouriteNumber will be automatically a storage variable 

   // Structs
   struct Person{
      uint256 favouriteNumber;
      string name;
   }

   // dynamic array
   Person[] public listOfPeople;

   function store(uint256 _favouriteNumber) public{
    myFavouriteNumber = _favouriteNumber;
   }

   // view, pure
   function retrive() public view returns(uint256){
      return myFavouriteNumber; // view
   }

   // calldata & memory - temporary variables
   // memory cab be changed, maupulated
   // calldata can't be modified
   // storage is permanet that can be modified
   // structs, mappings and array need to be given memory keyword; string is an arry if bytes need memory/calldata 
   // memory _name & calldata _name valid but storage _name invalid
   function addPerson(string memory _name, uint256 _favouriteNumber) public{
      _name = "cat";
   listOfPeople.push( Person(_favouriteNumber, _name) );
   }
}
