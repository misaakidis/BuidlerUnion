// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BuidlerUnionHQ {
    uint256 private _maxAllowedPriorityFee;
    address public dao; // Address of the Buidlers Union DAO

    event MaxAllowedPriorityFeeChanged(uint256 newMaxPriorityFee);

    modifier onlyDAO() {
        require(msg.sender == dao, "Only Buidlers Union DAO can call this");
        _;
    }

    constructor(address _dao, uint256 initialMaxPriorityFee) {
        dao = _dao;
        _maxAllowedPriorityFee = initialMaxPriorityFee;
    }

    function getMaxAllowedPriorityFee() external view returns (uint256) {
        return _maxAllowedPriorityFee;
    }

    function setMaxAllowedPriorityFee(uint256 newMaxPriorityFee) external onlyDAO {
        _maxAllowedPriorityFee = newMaxPriorityFee;
        emit MaxAllowedPriorityFeeChanged(newMaxPriorityFee);
    }

    function setDAOAddress(address newDAO) external onlyDAO {
        dao = newDAO;
    }
}
