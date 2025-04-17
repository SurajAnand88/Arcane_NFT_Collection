## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```

//Sad svg

data:image/svg+xml;base64,
PHN2ZyB3aWR0aD0iMzAwIiBoZWlnaHQ9IjE1MCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIw
MDAvc3ZnIj48ZyBpZD0ic2FkLWVtb2ppIj48Y2lyY2xlIGN4PSIyMjUiIGN5PSI3NSIgcj0iNTAi
IGZpbGw9IiNGRkVCM0IiIHN0cm9rZT0iIzAwMCIgc3Ryb2tlLXdpZHRoPSIyIi8+PGNpcmNsZSBj
eD0iMjEwIiBjeT0iNjAiIHI9IjUiIGZpbGw9IiMwMDAiLz48Y2lyY2xlIGN4PSIyNDAiIGN5PSI2
MCIgcj0iNSIgZmlsbD0iIzAwMCIvPjxwYXRoIGQ9Ik0yMTAsMTAwIFEyMjUsODAgMjQwLDEwMCIg
c3Ryb2tlPSIjMDAwIiBzdHJva2Utd2lkdGg9IjMiIGZpbGw9Im5vbmUiLz48L2c+PC9zdmc+

//happy svg

data:image/svg+xml;base64,
PHN2ZyB3aWR0aD0iMzAwIiBoZWlnaHQ9IjE1MCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIw
MDAvc3ZnIj48ZyBpZD0iaGFwcHktZW1vamkiPjxjaXJjbGUgY3g9Ijc1IiBjeT0iNzUiIHI9IjUw
IiBmaWxsPSIjRkZFQjNCIiBzdHJva2U9IiMwMDAiIHN0cm9rZS13aWR0aD0iMiIvPjxjaXJjbGUg
Y3g9IjYwIiBjeT0iNjAiIHI9IjUiIGZpbGw9IiMwMDAiLz48Y2lyY2xlIGN4PSI5MCIgY3k9IjYw
IiByPSI1IiBmaWxsPSIjMDAwIi8+PHBhdGggZD0iTTU1LDkwIFE3NSwxMTAgOTUsOTAiIHN0cm9r
ZT0iIzAwMCIgc3Ryb2tlLXdpZHRoPSIzIiBmaWxsPSJub25lIi8+PC9nPj48L3N2Zz4=


sad svg uri
data:application/json;base64,eyJuYW1lIjoiQXJjYW5lIiwgImRlc2NyaXB0aW9uIjoiQSBORlQgdGhhdCByZWZsZWN0cyB0aGUgb3duZXJzIG1vb2QuIiwgImF0dHJpYnV0ZXMiOiBbeyJ0cmFpdHNfdHlwZSI6ICJtb29kaWUiLCAidmFsdWUiOiAxMDB9XSwgImltYWdlIjoiZGF0YTppbWFnZS9zdmcreG1sO2Jhc2U2NCxQSE4yWnlCM2FXUjBhRDBpTXpBd0lpQm9aV2xuYUhROUlqRTFNQ0lnZUcxc2JuTTlJbWgwZEhBNkx5OTNkM2N1ZHpNdWIzSm5Mekl3TURBdmMzWm5JajQ4WnlCcFpEMGljMkZrTFdWdGIycHBJajQ4WTJseVkyeGxJR040UFNJeU1qVWlJR041UFNJM05TSWdjajBpTlRBaUlHWnBiR3c5SWlOR1JrVkNNMElpSUhOMGNtOXJaVDBpSXpBd01DSWdjM1J5YjJ0bExYZHBaSFJvUFNJeUlpOCtQR05wY21Oc1pTQmplRDBpTWpFd0lpQmplVDBpTmpBaUlISTlJalVpSUdacGJHdzlJaU13TURBaUx6NDhZMmx5WTJ4bElHTjRQU0l5TkRBaUlHTjVQU0kyTUNJZ2NqMGlOU0lnWm1sc2JEMGlJekF3TUNJdlBqeHdZWFJvSUdROUlrMHlNVEFzTVRBd0lGRXlNalVzT0RBZ01qUXdMREV3TUNJZ2MzUnliMnRsUFNJak1EQXdJaUJ6ZEhKdmEyVXRkMmxrZEdnOUlqTWlJR1pwYkd3OUltNXZibVVpTHo0OEwyYytQQzl6ZG1jKyJ9

happy svg uri
data:application/json;base64,eyJuYW1lIjoiQXJjYW5lIiwgImRlc2NyaXB0aW9uIjoiQSBORlQgdGhhdCByZWZsZWN0cyB0aGUgb3duZXJzIG1vb2QuIiwgImF0dHJpYnV0ZXMiOiBbeyJ0cmFpdHNfdHlwZSI6ICJtb29kaWUiLCAidmFsdWUiOiAxMDB9XSwgImltYWdlIjoiZGF0YTppbWFnZS9zdmcreG1sO2Jhc2U2NCxQSE4yWnlCM2FXUjBhRDBpTXpBd0lpQm9aV2xuYUhROUlqRTFNQ0lnZUcxc2JuTTlJbWgwZEhBNkx5OTNkM2N1ZHpNdWIzSm5Mekl3TURBdmMzWm5JajQ4WnlCcFpEMGlhR0Z3Y0hrdFpXMXZhbWtpUGp4amFYSmpiR1VnWTNnOUlqYzFJaUJqZVQwaU56VWlJSEk5SWpVd0lpQm1hV3hzUFNJalJrWkZRak5DSWlCemRISnZhMlU5SWlNd01EQWlJSE4wY205clpTMTNhV1IwYUQwaU1pSXZQanhqYVhKamJHVWdZM2c5SWpZd0lpQmplVDBpTmpBaUlISTlJalVpSUdacGJHdzlJaU13TURBaUx6NDhZMmx5WTJ4bElHTjRQU0k1TUNJZ1kzazlJall3SWlCeVBTSTFJaUJtYVd4c1BTSWpNREF3SWk4K1BIQmhkR2dnWkQwaVRUVTFMRGt3SUZFM05Td3hNVEFnT1RVc09UQWlJSE4wY205clpUMGlJekF3TUNJZ2MzUnliMnRsTFhkcFpIUm9QU0l6SWlCbWFXeHNQU0p1YjI1bElpOCtQQzluUGo0OEwzTjJaejQ9In0=

