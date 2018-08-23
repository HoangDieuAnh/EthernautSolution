pragma solidity ^0.4.18;

contract ClaimKing {
    function ClaimKing() {
    }
    // or simply don't make this fall back function as payable
    function() public payable {
        revert();
    }
    function transferToAddr(address king) public payable {
        king.call.value(msg.value)();
    }
}
