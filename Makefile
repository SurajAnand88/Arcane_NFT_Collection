# -include .env

source .env

deploy-anvil:
	forge script script/DeployArcane.s.sol --rpc-url localhost:8545 --broadcast --account TestKey

deploy-sepolia:
	forge script script/DeployArcane.s.sol --rpc-url "${SEPOLIA_RPC_URL}" --broadcast --account SepoliaWallet

sepolia:
	forge script script/DeployArcane.s.sol --rpc-url $SEPOLIA_RPC_URL} --broadcast --account SepoliaWallet


Test_account_address : 0xAA3edE5A6f419D62b3a5b555b87eD65A5FD3dDfe