pragma solidity ^0.6.0;

contract AirDrop {
    
  constructor() payable {}

  /// #if_succeeds forall i in 1..addresses.length :: addresses[i] != address(0);
  function sendEth(address[] addresses) public returns (bool) {
      for (uint i = 0; i < addresses.length; i++) {
          addresses[i].send(0.1);
      }
  }
}


