module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // to customize your Truffle configuration!
  networks: {
    development: {
      host: "localhost",
      port: 8545,
      gas: 500000,
      network_id: "*" // Match any network id
    },
    net42: {
      host: "localhost",
      port: 8545,
      network_id: 42,
      gas: 500000
    }
  }
};
