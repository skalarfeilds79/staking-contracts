pragma solidity ^0.8.7;

import "hardhat/console.sol";

contract StakingDummy {
    // Parameters
    // uint128 public constant ValidatorThreshold = 1 ether;

    // Properties
    address[] public _validators;      
    mapping(address => bool) _addressToIsValidator;
    mapping(address => uint256) _addressToStakedAmount;
    mapping(address => uint256) _addressToValidatorIndex;
    uint256 _stakedAmount;

    constructor() {
        _validators.push(0x2E6e1996eA0568C05334fB9ce10F2aF32080F7Fc);
        _addressToIsValidator[0x2E6e1996eA0568C05334fB9ce10F2aF32080F7Fc] = true;
        _addressToStakedAmount[0x2E6e1996eA0568C05334fB9ce10F2aF32080F7Fc] = 1 ether;
        _addressToValidatorIndex[0x2E6e1996eA0568C05334fB9ce10F2aF32080F7Fc] = 0;
        _stakedAmount = 1 ether;
    }

    function stakedAmount() public view returns (uint256) {
        return _stakedAmount;
    }

    function validators() public view returns (address[] memory) {
        return _validators;
    }
}
