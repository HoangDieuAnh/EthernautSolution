var t = null; 
// data start at index 1 in storage. Each in dex in data allocate a slot in storage => data[2] is at
// index 3
await web3.eth.getStorageAt(contract.address, 3, function(error, result){t = result})
await contract.unlock(t);