// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {StudentData} from "../src/StudentData.sol";

contract DeployStudentData is Script {
    StudentData public StudentDataContract;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        StudentDataContract = new StudentData("Alice", 20);

        vm.stopBroadcast();
    }
}


