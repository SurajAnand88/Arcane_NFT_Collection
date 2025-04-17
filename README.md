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

data:image/svg+xml;base64,
PHN2ZyB3aWR0aD0iMjAwIiBoZWlnaHQ9IjEwMCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIw
MDAvc3ZnIj4NCjwhLS0gQmFja2dyb3VuZCAtLT4NCjxyZWN0IHdpZHRoPSIyMDAiIGhlaWdodD0i
MTAwIiBmaWxsPSIjZjRmNGY0IiAvPg0KDQo8IS0tIFRleHQgU3R5bGluZyAtLT4NCjx0ZXh0IHg9
IjUwJSIgeT0iNTAlIiBkb21pbmFudC1iYXNlbGluZT0ibWlkZGxlIiB0ZXh0LWFuY2hvcj0ibWlk
ZGxlIg0KICAgICAgZm9udC1mYW1pbHk9IkFyaWFsLCBzYW5zLXNlcmlmIiBmb250LXNpemU9IjI0
IiBmaWxsPSIjMDA3QkZGIiBzdHJva2U9IiMwMDAiIHN0cm9rZS13aWR0aD0iMC41Ij4NCiAgU3Vy
YWoNCjwvdGV4dD4NCjwvc3ZnPg==

//Sad svg

data:image/svg+xml;base64,
PHN2ZyB3aWR0aD0iMzAwIiBoZWlnaHQ9IjE1MCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIw
MDAvc3ZnIj4NCjxnIGlkPSJzYWQtZW1vamkiPg0KICAgIDxjaXJjbGUgY3g9IjIyNSIgY3k9Ijc1
IiByPSI1MCIgZmlsbD0iI0ZGRUIzQiIgc3Ryb2tlPSIjMDAwIiBzdHJva2Utd2lkdGg9IjIiLz4N
CiAgICA8Y2lyY2xlIGN4PSIyMTAiIGN5PSI2MCIgcj0iNSIgZmlsbD0iIzAwMCIvPg0KICAgIDxj
aXJjbGUgY3g9IjI0MCIgY3k9IjYwIiByPSI1IiBmaWxsPSIjMDAwIi8+DQogICAgPHBhdGggZD0i
TTIxMCwxMDAgUTIyNSw4MCAyNDAsMTAwIiBzdHJva2U9IiMwMDAiIHN0cm9rZS13aWR0aD0iMyIg
ZmlsbD0ibm9uZSIvPg0KICA8L2c+DQo8L3N2Zz4=

//happy svg

data:image/svg+xml;base64,
PHN2ZyB3aWR0aD0iMzAwIiBoZWlnaHQ9IjE1MCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIw
MDAvc3ZnIg0KDQo8ZyBpZD0iaGFwcHktZW1vamkiPg0KICAgIDxjaXJjbGUgY3g9Ijc1IiBjeT0i
NzUiIHI9IjUwIiBmaWxsPSIjRkZFQjNCIiBzdHJva2U9IiMwMDAiIHN0cm9rZS13aWR0aD0iMiIv
Pg0KICAgIDxjaXJjbGUgY3g9IjYwIiBjeT0iNjAiIHI9IjUiIGZpbGw9IiMwMDAiLz4NCiAgICA8
Y2lyY2xlIGN4PSI5MCIgY3k9IjYwIiByPSI1IiBmaWxsPSIjMDAwIi8+DQogICAgPHBhdGggZD0i
TTU1LDkwIFE3NSwxMTAgOTUsOTAiIHN0cm9rZT0iIzAwMCIgc3Ryb2tlLXdpZHRoPSIzIiBmaWxs
PSJub25lIi8+DQogIDwvZz4NCj48L3N2Zz4=\


data:image/svg+xml;base64,
PHN2ZyB3aWR0aD0iMzAwIiBoZWlnaHQ9IjE1MCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIw
MDAvc3ZnIj48ZyBpZD0iaGFwcHktZW1vamkiPjxjaXJjbGUgY3g9Ijc1IiBjeT0iNzUiIHI9IjUw
IiBmaWxsPSIjRkZFQjNCIiBzdHJva2U9IiMwMDAiIHN0cm9rZS13aWR0aD0iMiIvPjxjaXJjbGUg
Y3g9IjYwIiBjeT0iNjAiIHI9IjUiIGZpbGw9IiMwMDAiLz48Y2lyY2xlIGN4PSI5MCIgY3k9IjYw
IiByPSI1IiBmaWxsPSIjMDAwIi8+PHBhdGggZD0iTTU1LDkwIFE3NSwxMTAgOTUsOTAiIHN0cm9r
ZT0iIzAwMCIgc3Ryb2tlLXdpZHRoPSIzIiBmaWxsPSJub25lIi8+PC9nPj48L3N2Zz4=

