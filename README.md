# MAKE Token smart contract

- _Standard_ : [ERC20](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md)
- _[Name](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md#name)_ : MAKE token
- _[Ticker](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md#symbol)_ : MKT
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
