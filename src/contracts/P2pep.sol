pragma solidity ^0.4.23;

contract P2pep {

  address public owner;
  uint constant priceFactor = 2*(10**16);
  modifier restricted() {
    if (msg.sender == owner) _;
  }

  struct Consumer {
    address consumerId;
    string consumerName;
  }

  struct Provider {
    string providerId;
    string providerName;
    uint32 totalKilowatts;
    uint32 rating;
    mapping( uint32 => Consumer ) consumers;
  }

  mapping( address => Consumer ) consumers;
  mapping( address => Provider ) providers;

  constructor() public {
      owner = msg.sender;
  }

  function addConsumer(string name) public {
    consumers[0] = Consumer(msg.sender, name);
  }
  function addProvider(string name) public {
    consumers[0] = Consumer(msg.sender, name); // todp - fix to pro
  }
  function buyElectricity (address providerAddress) public payable {
    uint purchasedDeal = priceFactor*msg.value;

     require (msg.value >= purchasedDeal, "Hey! Not enough ether!");
     providerAddress.transfer(msg.value);
  }
  
  

}