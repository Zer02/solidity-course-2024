// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // version

contract SimpleStorage {
    // gets initialized to 0 if no value is specified
    uint256 myFavoriteNumber; // 0

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // Person public zero = Person({name: "zero", favoriteNumber: 29});
    Person[] public listOfPeople; // []

    // chelsea -> 232
    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    // view, pure
    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] =_favoriteNumber;
    }

}