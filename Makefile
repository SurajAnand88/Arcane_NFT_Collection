-include .env

source .env

deploy-anvil:
	forge script script/DeployArcane.s.sol --rpc-url localhost:8545 --broadcast --account TestKey

deploy-sepolia:
	forge script script/DeployArcane.s.sol --rpc-url https://eth-sepolia.g.alchemy.com/v2/SpNLu8QnfuaXgpmqHVAgauoMF0uY_L96 --broadcast --account SepoliaWallet

sepolia:
	forge script script/DeployArcane.s.sol --rpc-url https://eth-sepolia.g.alchemy.com/v2/SpNLu8QnfuaXgpmqHVAgauoMF0uY_L96 --broadcast --account SepoliaWallet


