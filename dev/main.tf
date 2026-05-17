module "rg" {
  source = "../module/azurerm_resource_group"
  rg     = var.rg
}

module "vnet" {
  depends_on = [module.rg]
  source     = "../module/azurerm_virtual_network"
  vnet       = var.vnet
}

module "subnet" {
  depends_on = [module.rg, module.vnet]
  source     = "../module/azurerm_subnet"
  subnet     = var.subnet
}

# module "nic" {
#   depends_on = [module.rg,module.subnet,module.vnet,module.pip]
#   source     = "../module/azurerm_network_interface"
#   nic        = var.nic
#   pip_id = module.pip.pip_id
# }

module "pip" {
  depends_on = [ module.rg ]
  source = "../module/azurerm_public_ip"
  pip = var.pip
}

module "vm" {
  depends_on = [ module.rg,module.vnet, module.subnet, module.pip]
  source = "../module/azurerm_virtual_machine"
  vkp_vm = var.vkp_vm
}
