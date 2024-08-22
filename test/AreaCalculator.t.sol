// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../src/AreaCalculator.sol"; 

contract AreaCalculatorTest is Test {
    AreaCalculator calculator;

    function setUp() public {
        calculator = new AreaCalculator();
    }

    function testCalculateTriangleArea() public view {
        uint256 base = 10;
        uint256 height = 20;
        uint256 expectedArea = (base * height) / 2;
        assertEq(calculator.triangleArea(base, height), expectedArea, "Triangle area calculation failed");
    }

    function testCalculateRectangleArea() public view {
        uint256 length = 15;
        uint256 width = 30;
        uint256 expectedArea = length * width;
        assertEq(calculator.rectangleArea(length, width), expectedArea, "Rectangle area calculation failed");
    }

    function testCalculateSquareArea() public view {
        uint256 sideLength = 25;
        uint256 expectedArea = sideLength * sideLength;
        assertEq(calculator.squareArea(sideLength), expectedArea, "Square area calculation failed");
    }
}
