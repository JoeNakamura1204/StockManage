const HelloWorld = artifacts.require("ManageDocument");

module.exports = function(deployer) {
  // Use deployer to state migration tasks.
    deployer.deploy(HelloWorld);
};
