// Deployed Contract Address: https://sepolia.etherscan.io/tx/0xa95254c6cc1eccfc4227a85279eed78954350c121a16a46d1d5b2726eba54b73

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

   // mapping ex: lipon => 7 , default value is always zero
   mapping(string => uint256) public nameToFavouriteNumber;

   function store(uint256 _favouriteNumber) public{
    myFavouriteNumber = _favouriteNumber;
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
