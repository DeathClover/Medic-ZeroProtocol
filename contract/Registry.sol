//SPDX-License-Identifier: UNLICENSED
// --all rights reserved --

pragma solidity ^0.8.0;

//import "./Info.sol";

contract Registry {
    
    struct PersonalInformation {
        //Info _info;
        //string name;
        address docAddress;
        
        
    }
    uint index;
    uint count;
    mapping(string  => PersonalInformation)public registrystudent;
    mapping(string  => PersonalInformation)public registrydoc;
    
    function  RegisterStudent( string memory Name,address _docAddress  ) public  {
        registrystudent[Name].docAddress = _docAddress;
        count++;
    }
    
    function RegisterDoctor(string memory Name,address _docAddress) public {
        registrydoc[Name].docAddress = _docAddress ;
    }
    
    function UpdateStatus(string memory Name,address _docAddress) public {
        registrydoc[Name].docAddress = _docAddress ;
        registrystudent[Name].docAddress = _docAddress;
    }
    
    function RevokeRegister() public{
        
    }
}
