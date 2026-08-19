// SPDX-License-Identifier: MIT
pragma solidity ^0.8.36;

contract SimpleStorage {

   uint256 myFavouriteNumber;

   // Structs
   struct Person{
      uint256 favouriteNumber;
      string name;
   }

   // dynamic array
   Person[] public listOfPeople;

   // mapping , default value is always zero
   mapping(string => uint256) public nameToFavouriteNumber;

   function store(uint256 _favouriteNumber) public virtual {
    myFavouriteNumber = _favouriteNumber; // +5
   }

   // view, pure
   function retrive() public view returns(uint256){
      return myFavouriteNumber; // view
   }

   // calldata, memory, storage
   function addPerson(string memory _name, uint256 _favouriteNumber) public{
   listOfPeople.push( Person(_favouriteNumber, _name) );
   nameToFavouriteNumber[_name] = _favouriteNumber;
   }
}
