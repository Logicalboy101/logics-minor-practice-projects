// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {RomanNumeralConverter} from "../src/RomanNumeralConverter.sol";
import {Script} from "forge-std/Script.sol";

contract DeployRomanNumeralConverter is Script {
    RomanNumeralConverter romanNumeralConverter;

    function run() external returns (RomanNumeralConverter) {
        vm.startBroadcast();
        romanNumeralConverter = new RomanNumeralConverter();
        vm.stopBroadcast();
        return romanNumeralConverter;
    }
}
