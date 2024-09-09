// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {RomanNumeralConverter} from "../src/RomanNumeralConverter.sol";
import {DeployRomanNumeralConverter} from "../script/DeployRomanNumeralConverter.s.sol";
import {Test, console} from "forge-std/Test.sol";

contract RomanNumeralConverterTest is Test {
    DeployRomanNumeralConverter deployer;
    RomanNumeralConverter romanNumeralConverter;
    address LOGIC = makeAddr("logic");

    function setUp() public {
        deployer = new DeployRomanNumeralConverter();
        romanNumeralConverter = deployer.run();
    }

    function testItWorksPlease() public {
        vm.prank(LOGIC);
        string memory randomNumeral = romanNumeralConverter._toRomanNumeral(
            3857
        );
        console.log(randomNumeral);
    }
    // IT WORKS YAAAAY!!!!!!!!!!!!!!!
}
