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
