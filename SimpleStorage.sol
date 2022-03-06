pragma solidity ^0.6.0;

contract SimpeStorage{

    uint256 public favoriteNumber;

    function store (uint256 _favoriteNumber)public{
        favoriteNumber=_favoriteNumber;
    }

    function retrive() public view returns(uint256){
        return favoriteNumber;
    }
}