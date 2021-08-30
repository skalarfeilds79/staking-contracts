pragma solidity ^0.8.7;

import "hardhat/console.sol";

contract StakingDummy {
    // Parameters
    // uint128 public constant ValidatorThreshold = 1 ether;

    // Properties
    address[] public _validators;      
    uint256 b;
    uint256 c;
    uint256 d;
    uint256 _stakedAmount;

    constructor() {
        _validators.push(0x2E6e1996eA0568C05334fB9ce10F2aF32080F7Fc);
        b = 2 ether;
        c = 3 ether;
        d = 4 ether;
        _stakedAmount = 1 ether;
    }

    function stakedAmount() public view returns (uint256) {
        return _stakedAmount;
    }
}
