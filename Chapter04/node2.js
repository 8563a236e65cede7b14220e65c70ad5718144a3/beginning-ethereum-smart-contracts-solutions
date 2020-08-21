// Add node1 address to node2
admin.addPeer("enode://e67a4afd870c4f9fa25f382cc69720140b0dd307f584b3c263fffd3e5bf909eafc3e2adb9651049d85197f85b684a1943eea8f03f3457f42d2e2cba3fb035584@127.0.0.1:30303")

// Check peers
admin.peers

// Check block number
eth.blockNumber

// Verify node1 mined block
eth.blockNumber

// Examining a Block
eth.getBlock(66)

// Create account for mining
personal.newAccount()

// Start mining
miner.start(1)

// Check who mined the latest block
eth.getBlock(eth.blockNumber)