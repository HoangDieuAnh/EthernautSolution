pragma solidity ^0.4.18;


interface Building {
  function isLastFloor(uint) view public returns (bool);
}


contract Elevator {
  function goTo(uint _floor) public {
  }
}

contract MyBuilding is Building {
    Elevator _elevator;
    function MyBuilding(address elevator) {
        elevator = Elevator(elevator);
    }
    
    function isLastFloor(uint _floor) view public returns (bool){
        return false;
    }
    
    function goToTop(uint _floor) public {
        _elevator.goTo(_floor);
    }
    
}