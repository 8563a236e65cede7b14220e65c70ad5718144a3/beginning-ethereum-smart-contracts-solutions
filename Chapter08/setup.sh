npm init --yes

npm install web3@0.20.7 --save

su root
npm install -g serve

serve

# Try with ganache-cli
ganache-cli

# Compile contract and get ABI and bytecode
solc --combined-json abi,bin ProofOfExistence.sol > ProofOfExistence.json