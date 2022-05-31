// SPDX-License-Identifier: MIT OR Apache-2.0
pragma solidity >=0.6.11;

import {ICommon} from "./ICommon.sol";

interface IOutbox is ICommon {
    function dispatch(
        uint32 _destinationDomain,
        bytes32 _recipientAddress,
        bytes calldata _messageBody
    ) external returns (uint256);
    function cacheCheckpoint() external;
    function latestCheckpoint() external view returns (bytes32, uint256);
    function count() external returns (uint256);
    function fail() external;
}
