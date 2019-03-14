const Migrations = artifacts.require("Migrations");
var MyToken = artifacts.require("./MyToken.sol");
var MyTokenSale = artifacts.require("./MyTokenSale.sol");

const ether = (n) => new web3.utils.BN(web3.utils.toWei(n.toString(), 'ether'));


module.exports = async function(deployer , network , accounts) {
  const _name = "CSC6890 Token";
  const _symbol = "GSU";
  const _decimal = 18;
  deployer.deploy(Migrations);



  deployer.deploy(MyToken,_name,_symbol,_decimal)
  .then(() => MyToken.deployed())
  .then(token => deployer.deploy(MyTokenSale
                                  , 450
                                  , accounts[0]
                                  , token.address
                                  , ether(150)
                                  ))
};