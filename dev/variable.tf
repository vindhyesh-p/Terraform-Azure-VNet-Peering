variable "rg" {
  type = map(object({
    rg_name  = string
    location = string
  }))
}

variable "vnet" {
  type = map(object({
    vnet_name           = string
    resource_group_name = string
    location            = string
    address_space       = list(string)
  }))
}

variable "subnet" {
  type = map(object({
    subnet_name          = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefixes     = list(string)
  }))
}

# variable "nic" {
#   type = map(object({
#     nic_name             = string
#     resource_group_name  = string
#     location             = string
#     subnet_name          = string
#     virtual_network_name = string
#   }))
# }

# variable "pip_id" {}

variable "vkp_vm" {
  type = map(object({
    virtual_network_name = string
    nic_name             = string
    vm_name              = string
    resource_group_name  = string
    location             = string
    size                 = string
    admin_username       = string
    admin_password       = string
    nsg_name             = string
    subnet_name          = string
    pip_name             = string
  }))
}



variable "pip" {
  type = map(object({
    pip_name            = string
    resource_group_name = string
    location            = string
    allocation_method   = string
  }))
}
