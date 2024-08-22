// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.3.2 <0.9.0;

contract AreaCalculator{

    function triangleArea(uint256 base, uint256 height) public pure returns  (uint256){
        return base*height/2 ;
    }

    function rectangleArea(uint256 length, uint256 width) public pure returns (uint256){
        return length*width;
    }

     function squareArea(uint256 length) public pure returns (uint256){
        return length**2;
    }
}