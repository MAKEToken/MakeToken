pragma solidity ^0.4.18;

import './token/StandardToken.sol';
import './AddressesFilterFeature.sol';

contract MintableToken is AddressesFilterFeature, StandardToken {

  event Mint(address indexed to, uint256 amount);

  event MintFinished();

  bool public mintingFinished = false;

  address public saleAgent;

  mapping (address => uint) public initialBalances;

  uint public vestingPercent;

  uint public constant percentRate = 100;

  address tm_wallet   = 0x22bdc72e45780ce240b729c1354da27dfa861f5e;
  address com_wallet  = 0x20190bf6F8C8c74067420C11A0448A61C80d5D2B;
  address adv1_wallet = 0xa965C07e210f22175E48975d6e7617cedB7e173A;
  address adv2_wallet = 0x34ef96c150e6d317bd8ebaade2e26c04643f44f7;
  address adv3_wallet = 0x0950823c0f99967ae4ab69bb2c5d75a82006e68b;
  address adv4_wallet = 0x4f89aacc3915132ece2e0fef02036c0f33879ea8;
  address dev_wallet  = 0x2CA7608fF0b552fCB66714D9F7587245b4a393eC;


  modifier notLocked(address _from, uint _value) {
    if(!(_from == owner || _from == saleAgent || allowedAddresses[_from])) {
      require(mintingFinished);
      if((vestingPercent <= percentRate) && (vestingPercent != 0)) {
        uint minLockedBalance = initialBalances[_from].mul(vestingPercent).div(percentRate);
        require(minLockedBalance <= balances[_from].sub(_value));
      }
    }
    _;
  }

  function setVestingPercent(uint newVestingPercent) public {
    require(msg.sender == saleAgent || msg.sender == owner);
    vestingPercent = newVestingPercent;
  }

  function setSaleAgent(address newSaleAgnet) public {
    require(msg.sender == saleAgent || msg.sender == owner);
    saleAgent = newSaleAgnet;
  }

  function mint(address _to, uint256 _amount) public returns (bool) {
    require((msg.sender == saleAgent || msg.sender == owner) && !mintingFinished);
    
    totalSupply = totalSupply.add(_amount);
    balances[_to] = balances[_to].add(_amount);

    initialBalances[_to] = balances[_to];

    Mint(_to, _amount);
    Transfer(address(0), _to, _amount);
    return true;
  }

  /**
   * @dev Function to stop minting new tokens.
   * @return True if the operation was successful.
   */
  function finishMinting() public returns (bool) {
    require((msg.sender == saleAgent || msg.sender == owner) && !mintingFinished);

    // mint 900M MAKE tokens to tm_wallet
    mint(tm_wallet, 900000000 * 10**18);
    
    //advisors amounts
    mint(com_wallet, 1 * 10**18);
    mint(adv1_wallet,  1000000 * 10**18);
    mint(adv2_wallet, 35000000 * 10**18);
    mint(adv3_wallet, 15000000 * 10**18);
    mint(adv4_wallet, 12500000 * 10**18);


    mintingFinished = true;
    MintFinished();
    return true;
  }

  function transfer(address _to, uint256 _value) public notLocked(msg.sender, _value)  returns (bool) {
    return super.transfer(_to, _value);
  }

  function transferFrom(address from, address to, uint256 value) public notLocked(from, value) returns (bool) {
    return super.transferFrom(from, to, value);
  }

}
