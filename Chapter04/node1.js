// node1 script
personal.newAccount()

// Show list of accounts
eth.accounts

// Check balance
eth.getBalance(eth.accounts[0])

// Check balance in ether
web3.fromWei(eth.getBalance(eth.accounts[0]), "ether")

// Exit
exit

// After node2 is up
admin.nodeInfo

// Start mining after node2 is added as peer
miner.start(1)

// Check block number
eth.eth.blockNumber

// Stop mining
miner.stop()

// Create second account to transfer funds to
personal.newAccount()

// Check available accounts
eth.accounts

// Check balances
eth.getBalance(eth.accounts[0])
eth.getBalance(eth.accounts[1])

// Unlock source account
personal.unlockAccount(eth.accounts[0])

// Send ether
eth.sendTransaction({from: eth.accounts[0],
                    to: eth.accounts[1],
                    value: web3.toWei(5, "ether")
                    })

// Check balances
eth.getBalance(eth.accounts[0])
eth.getBalance(eth.accounts[1])

// View coinbase
eth.coinbase

// View existing accounts
eth.accounts

// Change coinbase
miner.setEtherbase(eth.accounts[1])

// View coinbase
eth.coinbase
