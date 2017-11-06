Set-ExecutionPolicy Unrestricted CurrentUser

Login-AzureRmAccount

# Import module
Import-Module "D:\Workspace\WCIS Vorlesung WS17\Übungen\Übung 3\resources\adduser.psm1"


# Run function in module
$gatewayIDLeader = "/subscriptions/50a79087-dc66-45d2-bad2-37af46e2dd03/resourceGroups/Ethereum/providers/Microsoft.Network/virtualNetworkGateways/vNet0-Gateway"
$gatewayIDMember = "/subscriptions/50a79087-dc66-45d2-bad2-37af46e2dd03/resourceGroups/EthereumMember/providers/Microsoft.Network/virtualNetworkGateways/vNet1-Gateway"
$connectionName = "connection-jozessin"
$sharedKey = "WCIS2017"

CreateConnection -MyGatewayResourceId $gatewayIDLeader -OtherGatewayResourceId $gatewayIDMember -ConnectionName $connectionName -SharedKey $sharedKey