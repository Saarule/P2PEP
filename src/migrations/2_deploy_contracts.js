var P2pep = artifacts.require('../P2pep.sol');

module.exports = async function(deployer) {
  await deployer.deploy(P2pep);
};
