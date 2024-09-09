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
