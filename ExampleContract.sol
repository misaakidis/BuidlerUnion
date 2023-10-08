// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./PriorityLowPass.sol";

contract ExampleContract is PriorityLowPass {
    address public buidlerUnionHQAddress;

    constructor(address _BuidlerUnionHQAddress) {
        buidlerUnionHQAddress = _BuidlerUnionHQAddress;
    }

    function doSomething() external enforceMaxPriorityFee(buidlerUnionHQAddress) {
        // Your function logic here
    }
}
