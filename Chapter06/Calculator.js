loadScript("Calculator.abi")
loadScript("Calculator.bin")

// Check instance
CalcInstance
CalcInstance.multiply
miner.start(1)
CalcInstance.multiply

// Deploy to blockchain
CalcInstance.address
CalcInstance.abi

// Test calls
CalcInstance.multiply.call(7, 8)
CalcInstance.arithmetics.call(3, 4)