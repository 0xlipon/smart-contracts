// SPDX-License-Identifier: MIT
pragma solidity ^0.8.36; // solidity versions

contract SimpleStorage {

   uint256 myFavouriteNumber;
   // uint256[] listOfFavouriteNumbers; // arrays - [3,7,5]

   // Structs
   struct Person{
      uint256 favouriteNumber;
      string name;
   }

   // dynamic array
   Person[] public listOfPeople;

   // static array
   //Person[3] public listOfPeople;

   // Person public lipon = Person({favouriteNumber: 7, name: "Lipon"});
   // Person public utsob = Person({favouriteNumber: 12, name: "Utsob"});
   // Person public shobuj = Person({favouriteNumber: 16, name: "Shobuj"});

   function store(uint256 _favouriteNumber) public{
    myFavouriteNumber = _favouriteNumber;
   }

   // view, pure
   function retrive() public view returns(uint256){
      return myFavouriteNumber; // view
   }

   // first variant
   // function addPerson(string memory _name, uint256 _favouriteNumber) public{
   //    Person memory newPerson = Person(_favouriteNumber, _name);
   //    listOfPeople.push(newPerson);
   // }

   // second variant
   function addPerson(string memory _name, uint256 _favouriteNumber) public{
      listOfPeople.push( Person(_favouriteNumber, _name) );
   }

}
