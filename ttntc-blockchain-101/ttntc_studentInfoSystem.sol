// SPDX-License-Identifier: GPL-3.0
pragma solidity = 0.8.7;

contract Students {

    mapping( uint => string ) students;
    // this says that the mapping for student = a numeric key + a string

    function addData() public {
        students[901]="shafeeq";

    }

    function showData() public view returns(string memory){
        return students[901];
    }
}
