// SPDX-License-Identifier: MIT
// solhint-disable-next-line
pragma solidity ^0.6.0;

contract SimpeStorage{
    //type of data in solidity
    uint256  favoriteNumber;
    bool favoriteBool;
    
    //struct is like objects in java can store different vairables and be identified as a struct 
    struct People {
        uint256 favoriteNumber;
        string name;
    }
    
    People public person =People({favoriteNumber:2, name: "Iljas"});
    //arays 
    People [] public people;
    //mapping
    mapping(string=>uint256)public nameToFavoriteNumber;

    // public void functions
    function store (uint256 _favoriteNumber)public{
        favoriteNumber=_favoriteNumber;
    }
    //view functions don't make changes they just retrun the given data
    function retrive() public view returns(uint256){
        return favoriteNumber;
    }
    //function that stores data only in memory so that when the contract stops it gets deleted its the opposite of storage
    function addPerson(string memory _name, uint256 _favoriteNumber) public{
        people.push(People({favoriteNumber:_favoriteNumber,name: _name}));
        nameToFavoriteNumber[_name]=_favoriteNumber;
    }
}