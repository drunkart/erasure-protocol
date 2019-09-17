pragma solidity ^0.5.0;

import "../modules/Factory.sol";
import "./TestPost.sol";


contract TestPostFactory is Factory {

    constructor(address instanceRegistry) public {
        // deploy template contract
        TestPost template = new TestPost();
        address templateContract = address(template);
        // set instance type
        bytes4 instanceType = bytes4(keccak256(bytes('Post')));
        // set initSelector
        bytes4 initSelector = template.initialize.selector;
        // initialize factory params
        Factory._initialize(instanceRegistry, templateContract, instanceType, initSelector);
    }

}
