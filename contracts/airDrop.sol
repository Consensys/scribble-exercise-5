pragma solidity ^0.6.0;

contract AirDrop {
    
  constructor() public payable {}

  /// #if_succeeds forall (uint i in 1...addresses.length) addresses[i] != address(0);
  function sendEth(address payable[] memory addresses) public payable returns (bool) {
      for (uint i = 0; i < addresses.length; i++) {
          addresses[i].send(1);
      }
  }
}


