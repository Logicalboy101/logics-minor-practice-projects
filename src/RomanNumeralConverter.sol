// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract RomanNumeralConverter {
    error RomanNumeralConverter__MustBeBetween0to3999();
    error RomanNumeralConverter__Undefined();

    function baseNumbers(uint256 number) internal pure returns (string memory) {
        if (number == 0) {
            return "";
        }
        if (number == 1) {
            return "I";
        }
        if (number == 2) {
            return "II";
        }
        if (number == 3) {
            return "III";
        }

        if (number == 4) {
            return "IV";
        }
        if (number == 5) {
            return "V";
        }
        if (number == 6) {
            return "VI";
        }
        if (number == 7) {
            return "VII";
        }
        if (number == 8) {
            return "VIII";
        }
        if (number == 9) {
            return "IX";
        }
        if (number == 10) {
            return "X";
        }
        if (number == 20) {
            return "XX";
        }
        if (number == 30) {
            return "XXX";
        }
        if (number == 40) {
            return "XL";
        }
        if (number == 50) {
            return "L";
        }
        if (number == 60) {
            return "LX";
        }
        if (number == 70) {
            return "LXX";
        }
        if (number == 80) {
            return "LXXX";
        }
        if (number == 90) {
            return "XC";
        }
        if (number == 100) {
            return "C";
        }
        if (number == 200) {
            return "CC";
        }
        if (number == 300) {
            return "CCC";
        }
        if (number == 400) {
            return "CD";
        }
        if (number == 500) {
            return "D";
        }
        if (number == 600) {
            return "DC";
        }
        if (number == 700) {
            return "DCC";
        }
        if (number == 800) {
            return "DCCC";
        }
        if (number == 900) {
            return "CM";
        }
        if (number == 1000) {
            return "M";
        }
        if (number == 2000) {
            return "MM";
        }
        if (number == 3000) {
            return "MMM";
        }
    }

    function _toRomanNumeral(
        uint256 number
    ) public view returns (string memory) {
        if (number == 0) {
            revert RomanNumeralConverter__Undefined();
        }
        if (number > 3999) {
            revert RomanNumeralConverter__MustBeBetween0to3999();
        }
        if (number < 100) {
            return convertLessThan100(number);
        }
        if (number < 1000) {
            return convertLessThan1000(number);
        }
        if (number > 999) {
            return convertLessOrEqualTo3999(number);
        }
    }

    function convertLessThan100(
        uint256 number
    ) internal pure returns (string memory) {
        if (number > 89 && number < 100) {
            string memory converted;
            uint256 _remenant = number - 90;
            converted = string.concat(baseNumbers(90), baseNumbers(_remenant));
            return converted;
        }
        if (number > 79 && number < 90) {
            string memory converted;
            uint256 _remenant = number - 80;
            converted = string.concat(baseNumbers(80), baseNumbers(_remenant));
            return converted;
        }
        if (number > 69 && number < 80) {
            string memory converted;
            uint256 _remenant = number - 70;
            converted = string.concat(baseNumbers(70), baseNumbers(_remenant));
            return converted;
        }
        if (number > 59 && number < 70) {
            string memory converted;
            uint256 _remenant = number - 60;
            converted = string.concat(baseNumbers(60), baseNumbers(_remenant));
            return converted;
        }
        if (number > 49 && number < 60) {
            string memory converted;
            uint256 _remenant = number - 50;
            converted = string.concat(baseNumbers(50), baseNumbers(_remenant));
            return converted;
        }
        if (number > 39 && number < 50) {
            string memory converted;
            uint256 _remenant = number - 40;
            converted = string.concat(baseNumbers(40), baseNumbers(_remenant));
            return converted;
        }
        if (number > 29 && number < 40) {
            string memory converted;
            uint256 _remenant = number - 30;
            converted = string.concat(baseNumbers(30), baseNumbers(_remenant));
            return converted;
        }
        if (number > 19 && number < 30) {
            string memory converted;
            uint256 _remenant = number - 20;
            converted = string.concat(baseNumbers(20), baseNumbers(_remenant));
            return converted;
        }
        if (number > 9 && number < 20) {
            string memory converted;
            uint256 _remenant = number - 10;
            converted = string.concat(baseNumbers(10), baseNumbers(_remenant));
            return converted;
        }
        if (number > 0 && number < 10) {
            string memory converted;
            uint256 _remenant = number - 0;
            converted = string.concat(baseNumbers(0), baseNumbers(_remenant));
            return converted;
        }
    }

    function convertLessThan1000(
        uint256 number
    ) internal pure returns (string memory) {
        if (number > 99 && number < 200) {
            string memory converted;
            uint256 _remenant = number - 100;
            converted = string.concat(
                baseNumbers(100),
                convertLessThan100(_remenant)
            );
            return converted;
        }
        if (number > 199 && number < 300) {
            string memory converted;
            uint256 _remenant = number - 200;
            converted = string.concat(
                baseNumbers(200),
                convertLessThan100(_remenant)
            );
            return converted;
        }
        if (number > 299 && number < 400) {
            string memory converted;
            uint256 _remenant = number - 300;
            converted = string.concat(
                baseNumbers(300),
                convertLessThan100(_remenant)
            );
            return converted;
        }
        if (number > 399 && number < 500) {
            string memory converted;
            uint256 _remenant = number - 400;
            converted = string.concat(
                baseNumbers(400),
                convertLessThan100(_remenant)
            );
            return converted;
        }
        if (number > 499 && number < 600) {
            string memory converted;
            uint256 _remenant = number - 500;
            converted = string.concat(
                baseNumbers(500),
                convertLessThan100(_remenant)
            );
            return converted;
        }
        if (number > 599 && number < 700) {
            string memory converted;
            uint256 _remenant = number - 600;
            converted = string.concat(
                baseNumbers(600),
                convertLessThan100(_remenant)
            );
            return converted;
        }
        if (number > 699 && number < 800) {
            string memory converted;
            uint256 _remenant = number - 700;
            converted = string.concat(
                baseNumbers(700),
                convertLessThan100(_remenant)
            );
            return converted;
        }
        if (number > 799 && number < 900) {
            string memory converted;
            uint256 _remenant = number - 800;
            converted = string.concat(
                baseNumbers(800),
                convertLessThan100(_remenant)
            );
            return converted;
        }
        if (number > 899 && number < 1000) {
            string memory converted;
            uint256 _remenant = number - 900;
            converted = string.concat(
                baseNumbers(900),
                convertLessThan100(_remenant)
            );
            return converted;
        }
    }

    function convertLessOrEqualTo3999(
        uint256 number
    ) internal pure returns (string memory) {
        if (number > 999 && number < 2000) {
            string memory converted;
            uint256 _remenant = number - 1000;
            converted = string.concat(
                baseNumbers(1000),
                convertLessThan1000(_remenant)
            );
            return converted;
        }
        if (number > 1999 && number < 3000) {
            string memory converted;
            uint256 _remenant = number - 2000;
            converted = string.concat(
                baseNumbers(2000),
                convertLessThan1000(_remenant)
            );
            return converted;
        }
        if (number > 2999 && number < 4000) {
            string memory converted;
            uint256 _remenant = number - 3000;
            converted = string.concat(
                baseNumbers(3000),
                convertLessThan1000(_remenant)
            );
            return converted;
        }
    }
}
