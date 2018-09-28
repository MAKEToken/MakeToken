# MAKE Token smart contract

- _Standard_ : [ERC20](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md)
- _[Name](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md#name)_ : MAKE token
- _[Ticker](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md#symbol)_ : MAKE
- _[Decimals](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md#decimals)_ : 18
- _Emission_ : Mintable
- _Crowdsales_ : 3
- _Fiat dependency_ : 1 MAKE = 0.01 USD
- _Tokens locked_ : Yes

## Smart-contracts description

Extended tokens are minted after the all stages are finished.  
There is a special function to return 3rd party tokens that were sent by mistake (function retrieveTokens()).  
Each stage has a direct minting function in wei. This is made to support the external payment gateways.

### Contracts contains

1. _Token_ - Token contract
2. _ITO_ - ITO contract

### How to invest

To purchase tokens investor should send ETH (more than minimum 0.1 ETH) to corresponding crowdsale contract.
Recommended GAS: 250000, GAS PRICE - 21 Gwei.

### Wallets with ERC20 support

1. MyEtherWallet - https://www.myetherwallet.com/
2. Parity
3. Mist/Ethereum wallet

EXODUS not support ERC20, but have way to export key into MyEtherWallet - http://support.exodus.io/article/128-how-do-i-receive-unsupported-erc20-tokens

Investor must not use other wallets, coinmarkets or stocks. Can lose money.

## Tokens distribution

- _Team tokens percent_ : 15%
- _Marketing tokens percent_ : 5%
- _Reserved tokens percent_ : 5%
- _For sale tokens percent_ : 75%

## Main network configuration

- _Team tokens wallet_ :
- _Marketing tokens wallet_ :
- _Reserved tokens wallet_ :
- _Contracts manager_ :

### Links

1. _Token_ - https://etherscan.io/token/
2. _ITO_ - https://etherscan.io/address/

### Features

- Manually mint tokens by owner or sale agent at any time until token minting finished.
- Manually mint tokens in ether value by owner or sale agent at corresponding sale contract during current sale processing.
- setVestingPercent in token can lock percent of initial tokenholders balances

### Crowdsale stages

#### Private-Sale

- _Minimal insvested limit_ : 0.01 ETH
- _Base price_ : 1 ETH = 23 200 Tokens
- _Start_ : 01 Sept 2018 00:00:00 GMT
- _End_ : 30 Oct 2018 00:00:00 GMT
- _Wallet_ :

##### Bonuses

40% bonus 61 days

#### Pre-Sale

- _Minimal insvested limit_ : 0.01 ETH
- _Base price_ : 1 ETH = 23 200 Tokens
- _Start_ : 01 Nov 2018 00:00:00 GMT
- _End_ : 20 Jan 2018 00:00:00 GMT
- _Wallet_ :

##### Milestones

1. 35% over the next 30 days
2. 30% over the next 25 days
3. 25% over the next 31 days

#### Public-Sale

- _Minimal insvested limit_ : 0.01 ETH
- _Base price_ : 1 ETH = 23 200 Tokens
- _Start_ : 21 Jan 2018 00:00:00 GMT
- _End_ : 28 Feb 2018 00:00:00 GMT
- _Wallet_ :

##### Milestones

1. 20% over the next 7 days
2. 15% over the next 7 days
3. 10% over the next 7 days
4. 5% over the next 7 days
5. 0% over the next 11 days

## Ropsten network configuration

### Links

1. _Token_ - https://ropsten.etherscan.io/address/0x92c0025ec29d63c1e443a9ede18e3995e4eca42c
2. _ITO_ - https://ropsten.etherscan.io/address/0x544f7fd679ef6266155cc2d3b7f11054678fa98e#code

### Crowdsale stages

#### ITO (1st stage)

- _Minimal insvested limit_ : 0.1 ETH
- _Base price_ : 1 ETH = 23 200 Tokens
- _Start_ : 01 Sept 2018 00:00:00 GMT
- _Wallet_ : 0x31d46f3ca67e1b91eddad881305ec522f9b82b17

##### Bonuses

60 days, bonus +40%

##### Purchasers

- 1 ETH => 23,200 tokens + 40% bonus, gas =
  https://ropsten.etherscan.io/tx/0x0d4f31de22c28c9a661d8f9fb75550de50153dac62f2454d6bf4be2ff422812a

- 0.5 ETH => 11,600 tokens + 40% bonus, gas =
  https://ropsten.etherscan.io/tx/0x9f5d264f8c8574971cf8662bc14572a31ffc91b543e37aa2c621c7c93bfa1d4b

##### Service operations

- setToken, gas = 43524
  https://ropsten.etherscan.io/tx/0x56fe936df23c02dd24d2d29bcb9a6c61a51f00dfe2bb6e4b008ac1a6f4fa6516

- setMinter, gas= 44008
  https://ropsten.etherscan.io/tx/0x86b7469ea4f40611db03a4558fe02da65ea3ae16856a7730db44e106bf44d229

- setWallet, gas = 43898
  https://ropsten.etherscan.io/tx/0xf5940d1410ce5e41eb66c591db6b3cd400f6e26830f446a91f6bfecf45e389f7

### Token holders

https://ropsten.etherscan.io/token/0x92c0025ec29d63c1e443a9ede18e3995e4eca42c

### Token transfers

- transfer 23 200 tokens, gas =
  https://ropsten.etherscan.io/tx/0x0d4f31de22c28c9a661d8f9fb75550de50153dac62f2454d6bf4be2ff422812a

- transfer 11 600 tokens, gas =
  https://ropsten.etherscan.io/tx/0x9f5d264f8c8574971cf8662bc14572a31ffc91b543e37aa2c621c7c93bfa1d4b

- transfer 100 (test strict call of mint function) tokens, gas = 43882
  https://ropsten.etherscan.io/tx/0x3f63194e7d5a2084524d38088431ac3c757ec710d8971ca9f5383662bf550fd0
