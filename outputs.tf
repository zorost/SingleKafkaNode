output "generic_RG" {
  value = "${azurerm_resource_group.genericRG.name}"
}

output "kafkaPublicIP" {
  value = "${azurerm_public_ip.kafkaPublicIP.ip_address}"
}

output "kafkaPrivateIP" {
  value = "${azurerm_network_interface.kafkaNIC.private_ip_address}"
}

output "vNetID" {
  value = "${azurerm_virtual_network.genericVNet.id}"
}

output "subnets" {
  value = {
    for subnet in azurerm_subnet.subnets :
    subnet.name => subnet.address_prefix
  }
}

output "dataBricksSubnets" {
  value = {
    for subnet in azurerm_subnet.dbSubnets :
    subnet.name => subnet.address_prefix
  }
}
