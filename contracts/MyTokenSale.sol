pragma solidity ^0.4.24;


import "openzeppelin-solidity/contracts/crowdsale/Crowdsale.sol";
import "openzeppelin-solidity/contracts/crowdsale/emission/MintedCrowdsale.sol";
import "openzeppelin-solidity/contracts/crowdsale/validation/CappedCrowdsale.sol";

contract MyTokenSale is Crowdsale, MintedCrowdsale, CappedCrowdsale{

	//minimum investor Contribution - 20000000000000000000
	//minimum investor Contribution - 50000000000000000000
	uint256 public investorMinCap =  5000000000000000000; //the minimum contribution is 5 Ether
	uint256 public investorHardCap = 50000000000000000000;

	mapping(address => uint256) public contributions;

	constructor(uint256 _rate,
	  address _wallet,
	  ERC20 _token,
	  uint256 _cap)
	Crowdsale(_rate, _wallet, _token)
	CappedCrowdsale(_cap)
	public{
	}


  function _preValidatePurchase(
    address _beneficiary,
    uint256 _weiAmount
  )
    internal
  {
    super._preValidatePurchase(_beneficiary, _weiAmount);
    uint256 _existingContribution = contributions[_beneficiary];
	require(_existingContribution == 0); //Check to not allow more than 1 purchase per account. 
    uint256 _newContribution = _existingContribution.add(_weiAmount);
    require(_newContribution >= investorMinCap && _newContribution <= investorHardCap);
	contributions[_beneficiary] = _newContribution;     
  }
  
}