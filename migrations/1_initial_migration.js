var Splitter = artifacts.require("./Splitter.sol");

module.exports = function(deployer) {
  deployer.deploy(Splitter("0x7f37198c3f2f1a15e296da7782345cfce6a22102","0x8455ecacce761fbd803c6b1ee7a5fecad68f64d8"));
};
