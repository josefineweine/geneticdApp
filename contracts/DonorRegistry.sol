// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract DonorRegistry {
    mapping(address => uint256) public donations;

    function donate() public payable {
        donations[msg.sender] += msg.value;
    }

    function getDonation(address donor) public view returns (uint256) {
        return donations[donor];
    }
}
