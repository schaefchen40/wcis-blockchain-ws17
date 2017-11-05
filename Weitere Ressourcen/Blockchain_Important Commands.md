## To connect to a transaction node

*   In the Azure Portal go to the Resource Group the network has been deployed to and click on the link "x Succeeded"
*   Choose the deployment listet first ("microsoft-azure-blockchain.azure-blockchain...") 
*   Copy the URL path under Outputs ("xxx.xxx.cloudapp.azure.com")
*   Open Putty (or similar) and connect to "xxx.xxx.cloudapp.azure.com" on port 3000
*   Enter your credentials
*   Now you are connect to a transaction node

## To connect to a miner

*    In the Azure Portal go to the Resource Group the network has been deployed to
*   Fist you need to connect to a transactio node
*   Then depending on which miner you want to connect to click on "nic-mn0" or "nic-mn1"
*   Get the private IP address
*   In the command window where you are connected to the transaction node type "ssh privateIP" and hit Enter
*   Enter your password
*   Now you are connected to a mining node within the network
*   To show the mining output:
    *   Get the PID via "ps -aux | grep geth --datadir"
        *   Choose the one with "geth --datadir...
    *   Show the output of the related process via "tail -f /proc/<pid>/fd/1"
    *   Now you see the mininig output
    *   To stop displaying the output press "Ctrl + c"
*   To return to the transaction node type "logout" and hit Enter

## Important Ethereum Commands

*   Connect to the geth console (process is already running in the background): `geth attach`
*   Display existing public addresses: `eth.accounts`
*   Select an existing account: `eth.accounts[x]`
*   Get balance of an account: `eth.getBalance(eth.accounts[x])`
*   Create a new account: `personal.newAccount("passphrase")`
*   Send a transaction: `eth.sendTransaction({from: eth.accounts[0], to: 'addressTX0Account', value: web3.toWei(5, "ether")})`