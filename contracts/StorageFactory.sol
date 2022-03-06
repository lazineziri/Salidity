//SPDX-License_Identifier: MIT
pragma solidity ^0.6.0;
//importing files from same directory
import "./SimpleStorage.sol"; 
//inheritance as in solidity
contract StorageFactory is SimpleStorage {
    
    SimpleStorage[] public simpleStorageArray;
    
    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }
    //this funciton stores favoritenumber on the array indexed earlier 
    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber)public{
        
        SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).store(_simpleStorageNumber);
    }
    //this function retruns favoritenumber just by index nuber of the array
    function sfGet(uint256 _simpleStorageIndex)public view returns(uint256){
        return SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).retrieve();
    }

}