# Initialize nodes
geth --datadir data/node1 init genesisblock.json
geth --datadir data/node2 init genesisblock.json

# Start node1
geth --datadir data/node1 console 2>console1.log

# Start node2
geth --datadir data/node2 --port 30304 --nodiscover \
  --networkid 2345 console 2>console2.log

# Restart node1
geth --datadir data/node1 --networkid 2345 console 2>console1.log