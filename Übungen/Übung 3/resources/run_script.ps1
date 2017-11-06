Set-ExecutionPolicy Unrestricted CurrentUser

Login-AzureRmAccount

# Import module
Import-Module "xxx\adduser.psm1"


# Run function in module
$gatewayIDLeader = "/subscriptions/xxx"
$gatewayIDMember = "/subscriptions/xxx"
$connectionName = "xxx"
$sharedKey = "xxx"

CreateConnection -MyGatewayResourceId $gatewayIDLeader -OtherGatewayResourceId $gatewayIDMember -ConnectionName $connectionName -SharedKey $sharedKey