// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract MultiplesOfNumbers {
    event ArrayLogged(uint256[] indexed arrayLogged);
    function multiplesOf(
        uint256 aNumber,
        uint256 numberOfMultiples
    ) public returns (uint256[] memory) {
        uint256[] memory arrayLogged = new uint256[](numberOfMultiples);
        for (uint256 i = 0; i < numberOfMultiples; i++) {
            if (i == 0) {
                arrayLogged[i] = aNumber;
            } else {
                arrayLogged[i] = aNumber + arrayLogged[i - 1];
            }
        }
        emit ArrayLogged(arrayLogged);
        return arrayLogged;
    }

    // function multiplesOf(
    //     uint256 aNumber,
    //     uint256 numberOfMultiples
    // ) public returns (uint256[] memory) {
    //     return _multiplesOf(aNumber, numberOfMultiples);
    // }
}
