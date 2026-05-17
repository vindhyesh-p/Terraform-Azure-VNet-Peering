rg = {
  rg1 = {
    rg_name  = "vkp_rg"
    location = "canada central"
  }
}

vnet = {
  vnet1 = {
    vnet_name           = "vkp-vnet1"
    resource_group_name = "vkp_rg"
    location            = "canada central"
    address_space       = ["10.0.0.0/16"]
  }

  vnet2 = {
    vnet_name           = "vkp-vnet2"
    resource_group_name = "vkp_rg"
    location            = "canada central"
    address_space       = ["10.1.0.0/16"]
  }
}

subnet = {
  subnet1 = {
    subnet_name          = "vkpsubnet1"
    resource_group_name  = "vkp_rg"
    virtual_network_name = "vkp-vnet1"
    address_prefixes     = ["10.0.1.0/24"]
  }

  subnet2 = {
    subnet_name          = "vkpsubnet2"
    resource_group_name  = "vkp_rg"
    virtual_network_name = "vkp-vnet2"
    address_prefixes     = ["10.1.1.0/24"]
  }
}

# nic = {
#   nic1 = {
#     nic_name             = "vkp_nic1"
#     resource_group_name  = "vkp_rg"
#     location             = "canada central"
#     subnet_name          = "vkpsubnet1"
#     virtual_network_name = "vkp-vnet1"
#   }
#   nic2 = {
#     nic_name             = "vkp-nic2"
#     resource_group_name  = "vkp_rg"
#     location             = "canada central"
#     virtual_network_name = "vkp-vnet2"
#     subnet_name          = "vkpsubnet2"
#   }
# }

vkp_vm = {
  vm1 = {
    vm_name              = "FE-VM-1"
    resource_group_name  = "vkp_rg"
    location             = "canada central"
    size                 = "Standard_D2s_v3"
    admin_username       = "vkpuser"
    admin_password       = "vkp@12345678"
    nic_name             = "vkp_nic1"
    virtual_network_name = "vkp-vnet1"
    nsg_name             = "vkpnsg1"
    subnet_name          = "vkpsubnet1"
    pip_name             = "vkp_pip_1"
  }
  vm2 = {
    vm_name              = "FE-VM-2"
    resource_group_name  = "vkp_rg"
    location             = "canada central"
    size                 = "Standard_D2s_v3"
    admin_username       = "vkpuser"
    admin_password       = "vkp@12345678"
    nic_name             = "vkp_nic2"
    virtual_network_name = "vkp-vnet2"
    nsg_name             = "vkpnsg2"
    subnet_name          = "vkpsubnet2"
    pip_name             = "vkp_pip_2"
  }
}

pip = {
  pip1 = {
    pip_name            = "vkp_pip_1"
    resource_group_name = "vkp_rg"
    location            = "canada central"
    allocation_method   = "Static"
  }
  pip2 = {
    pip_name            = "vkp_pip_2"
    resource_group_name = "vkp_rg"
    location            = "canada central"
    allocation_method   = "Static"
  }
}
