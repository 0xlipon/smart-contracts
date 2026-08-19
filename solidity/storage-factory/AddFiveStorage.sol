// SPDX-License-Identifier: MIT
pragma solidity ^0.8.36;

import {SimpleStorage} from "./SimpleStorage.sol";

// Inherits the SimpleStorage into AddFiveStorage contract
// contract AddFiveStorage is SimpleStorage {
//     function sayHello() public pure returns(string memory){
//         return "Hello";
//     }
// }

// +5 (overrides) - virtual override
contract AddFiveStorage is SimpleStorage {
    function store(uint256 _newNumber) public override {
        myFavouriteNumber = _newNumber + 5;
    }
}
