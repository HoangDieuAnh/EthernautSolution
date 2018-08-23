pragma solidity ^0.4.18;


interface Building {
  function isLastFloor(uint) view public returns (bool);
}


contract Elevator {
  function goTo(uint _floor) public {
  }
}

contract MyBuilding is Building {
    Elevator elevator;
    uint thisFloor = 0;
    function MyBuilding(address _elevator) {
        elevator = Elevator(_elevator);
    }
    
    function isLastFloor(uint _floor) view public returns (bool) {
        if(thisFloor == _floor) {
            return true;
        }
        thisFloor = _floor;
        return false;
    }
    
    function goToTop(uint _floor) public {
        elevator.goTo(_floor);
    }
    
}