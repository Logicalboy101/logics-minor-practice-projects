// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {MultiplesOfNumbers} from "../src/MultiplesOfNumbers.sol";
import {Script} from "forge-std/Script.sol";

contract DeployMultiplesOfNumbers is Script {
    MultiplesOfNumbers multiplesOfNumbers;

    function run() external returns (MultiplesOfNumbers) {
        vm.startBroadcast();
        multiplesOfNumbers = new MultiplesOfNumbers();
        vm.stopBroadcast();
        return multiplesOfNumbers;
    }
}
// https://sepolia.etherscan.io/address/0x4fde2838c56b6d4a2e3f0a38bae9aa4252675a74 RomanNumralConverter
// https://sepolia.etherscan.io/address/0xf7b81ce5e35c606707940f739fb0196bfd4c9e3b MultiplesOfNumbers