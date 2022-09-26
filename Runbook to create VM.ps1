Disable-AzContextAutosave -Scope Process

$AzureContext = (Connect-AzAccount -Identity).context

$AzureContext = Set-AzContext -SubscriptionName $AzureContext.Subscription -DefaultProfile $AzureContext

#defining variables
$RG_Name = "Powershell-grp"
$VM_Name = "Powershellvm"
$location = "North Europe"
$vnet = "Powershell-vnet"
$subnet = "Subnet-Test1"
$Publicip = "Powershell-IP"
$NSG = "Powershell-nsg"
$VM_Image = "Win2019DataCenter"

New-AzVM -Name $VM_Name -ResourceGroupName $RG_Name -Location $location -VirtualNetworkName $vnet -SubnetName $subnet -PublicIpAddressName $Publicip -SecurityGroupName $NSG -Image $VM_Image