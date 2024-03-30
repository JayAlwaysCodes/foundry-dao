//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract Box is Ownable{
    constructor() Ownable(0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266){}

    uint256 private s_number;

    event NumberChanged(uint256 number);

    function store(uint256 newNumber) public onlyOwner{
        s_number = newNumber;
        emit NumberChanged(newNumber);
    }

    function getNumber() external view returns(uint256){
        return s_number;
    }
}