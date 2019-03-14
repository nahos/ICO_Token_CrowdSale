# ICO_Token_CrowdSale

This is a smart contract for simple capped crowdsale by using the Open Zeppelin library

  - Type some Markdown on the left
  - See HTML in the right
  - Magic


>
### Tech

This project uses a number of packages to work properly.

* [node.js]
* [npm] - awesome web-based text editor
* [truffle] - Markdown parser done right. Fast and easy to extend.
* [openzeppelin] - great UI boilerplate for modern web apps

### Installation

- Install node.js.Please refer to the [website] for downloading the packages and also to get the   installation instructions.When you install node.js, npm will also get installed along with it.Please use the below code to make sure that they are installed.Running the below command in CLI should return the version of nodejs and npm installed.
```sh
$ node -v
$ npm  -v

```
- Install truffle and open zeppelin(Version 1.12.0) by running the below commands
 ```sh
 $ npm -g install truffle
 $ npm -g install openzeppelin-solidity@1.12.0
 ```
- Navigate to the location containing the project and run the below commands
``` sh
$truffle compile
$truffle develop
migrate --reset
```
1) Change the minimum contribution to 5 Ether. (20 points)
  uint256 public investorMinCap =  5000000000000000000; 
2) Add method, getTokensLeft, to report how many tokens are left. (30 points)

3) Graduate Students question: Add the needed functionality to not allow more than 1 purchase per account. (40 points)
   require(_existingContribution == 0); //Check to not allow more than 1 purchase per account. 


1]sale.buyTokens(account1, {value : new web3.utils.BN(web3.utils.toWei('2.5', 'ether')) , from : account1});
2]sale.buyTokens(account1, {value : new web3.utils.BN(web3.utils.toWei('15', 'ether')) , from : account1});
3]
4]sale.buyTokens(account1, {value : new web3.utils.BN(web3.utils.toWei('15', 'ether')) , from : account1});// Doesnt Permit

Author:Sohan Sathyan
