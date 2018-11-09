pragma solidity ^0.4.23;

contract P2pep {

  event consumerAddedEvent (address indexed consumerAddress);

  event providerAddedEvent (address indexed providerAddress);

  event startConsumeEvent (uint indexed _candidateId);

  address public owner;
  uint constant priceFactor = 2*(10**16);
  modifier restricted() {
    if (msg.sender == owner) _;
  }

  struct Consumer {
    address consumerAddress;
    string consumerName;
    bool exist;
  }

  struct Provider {
    address providerAddress;
    string providerName;
    uint32 totalKilowatts;
    uint32 rating;
    bool exist;
    mapping( address => Consumer ) consumers;
  }

  mapping( address => Consumer ) consumers;
  mapping( address => Provider ) providers;

  constructor() public {
      owner = msg.sender;
  }

  function addConsumer(string name) public {

    require(consumers[msg.sender].exist, "allready exist");

    consumers[msg.sender] = Consumer(msg.sender, name, true);
    emit consumerAddedEvent(msg.sender);
  }

  function addProvider(string name, uint32 totalKW, uint32 rating) public {

    require(!(providers[msg.sender].exist));

    providers[msg.sender] = Provider(msg.sender, name, totalKW, rating, true);
    emit providerAddedEvent(msg.sender);
  }

  // this function is called by the consumer
  function buyElectricity (address providerAddress) public payable {
    uint purchasedDeal = priceFactor * msg.value;

    require (msg.value >= purchasedDeal, "Hey! Not enough ether!");
    require(!providers[providerAddress].exist);
    require(!providers[providerAddress].consumers[msg.sender].exist);

    // transfer from the consumer ( the sender ) to the provider
    providerAddress.transfer(msg.value);
    providers[providerAddress].consumers[msg.sender] = Consumer(msg.sender, consumers[msg.sender].consumerName, true);

  }
}