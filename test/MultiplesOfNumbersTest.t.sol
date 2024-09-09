// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {MultiplesOfNumbers} from "../src/MultiplesOfNumbers.sol";
import {DeployMultiplesOfNumbers} from "../script/DeployMultiplesOfNumbers.s.sol";
import {Vm} from "forge-std/Vm.sol";
import {Test, console} from "forge-std/Test.sol";

contract MultiplesOfNumbersTest is Test {
    event ArrayLogged(uint256[] indexed arrayLogged);
    DeployMultiplesOfNumbers deployer;
    MultiplesOfNumbers multiplesOfNumbers;
    address LOGIC = makeAddr("logic");

    function setUp() public {
        deployer = new DeployMultiplesOfNumbers();
        multiplesOfNumbers = deployer.run();
    }

    function testMultiplesOfNumbers() public {
        vm.prank(LOGIC);
        uint256[] memory someArray = multiplesOfNumbers.multiplesOf(3, 13);
        console.log(someArray[0]);
        console.log(someArray[1]);
        console.log(someArray[2]);
        console.log(someArray[3]);
        console.log(someArray[4]);
        console.log(someArray[5]);
        console.log(someArray[6]);
        console.log(someArray[7]);
        console.log(someArray[8]);
        console.log(someArray[9]);
        console.log(someArray[10]);
        console.log(someArray[11]);
        console.log(someArray[12]);
        
    } 

    function testMultiplesOfNumbersEmits() public {
        // vm.prank(LOGIC);
        // vm.expectEmit(true, false, false, false, address(multiplesOfNumbers));
        // emit ArrayLogged(arrayLogged);
        // multiplesOfNumbers.multiplesOf(3, 13);
        vm.prank(LOGIC);
        vm.recordLogs();
        multiplesOfNumbers.multiplesOf(2, 10);
        Vm.Log[] memory entries = vm.getRecordedLogs();
        bytes32 requestId = entries[0].topics[1];
        assert(uint256(requestId) > 0);
    }
}
