Disable-AzContextAutosave -Scope Process

$AzureContext = (Connect-AzAccount -Identity).context

$AzureContext = Set-AzContext -SubscriptionName $AzureContext.Subscription -DefaultProfile $AzureContext

#defining variables
$RG_Name = "Automation-grp"
$VM_Name = "Automationvm"
$location = "Central India"
$vnet = "Automation-vnet"
$subnet = "Subnet-Auto"
$Publicip = "Automation-IP"
$NSG = "Automation-nsg"
$VM_Image = "Win2019DataCenter"

New-AzVM -Name $VM_Name -ResourceGroupName $RG_Name -Location $location -VirtualNetworkName $vnet -SubnetName $subnet -PublicIpAddressName $Publicip -SecurityGroupName $NSG -Image $VM_Image
