// SPDX-License-Identifier: MIT
pragma solidity ^0.8.36;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {

    SimpleStorage[] public listOfSimpleStorageContracts;
    address[] public listOfSimpleStorageAddresses;

    function createSimpleStorageContract() public {
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorageContract);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
      // Required: Address & ABI
      // SimpleStorage mySimpleStorage = listOfSimpleStorageContract[_simpleStorageIndex];
      // SimpleStorage(address)
      SimpleStorage mySimpleStorage = SimpleStorage(listOfSimpleStorageAddresses[_simpleStorageIndex]);
      mySimpleStorage.store(_newSimpleStorageNumber);
    }

      function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
      return listOfSimpleStorageContracts[_simpleStorageIndex].retrive();
    }
}
