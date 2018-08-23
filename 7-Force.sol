pragma solidity ^0.4.18;


contract Ethertransfer {
    function Ethertransfer() {}
    function isAlive() payable returns(bool success) {
        return true;
    }
    function() payable {
        
    }
    function fundtransfer(address etherreceiver) {
        selfdestruct(etherreceiver); 
    }
}
