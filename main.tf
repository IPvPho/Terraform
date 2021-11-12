provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rgs" {
  for_each = var.rgs
  name     = each.value["name"]
  location = each.value["location"]
  tags     = lookup(each.value, "tags", null)
}

resource "azurerm_virtual_network" "vnets" {
  for_each            = var.vnets
  name                = each.value["name"]
  location            = each.value["location"]
  resource_group_name = each.value["resource_group_name"]
  address_space       = each.value["address_space"]
  dns_servers         = lookup(each.value, "dns_servers", null)

  dynamic "subnet" {
    for_each = each.value["subnets"]
    content {
      name           = subnet.value["name"]
      address_prefix = subnet.value["address_prefix"]
      security_group = lookup(subnet.value, "security_group", null)
    }
  }
}