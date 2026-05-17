# Terraform-Azure-VNet-Peering Lab


A simple Terraform project to practice and understand Azure Virtual Network (VNet) Peering using modular infrastructure.

**This lab creates:**

Two Azure VNets
Two Subnets
Two Linux Virtual Machines
Network Security Groups (NSG)
VNet Peering between both VNets
Private communication between VMs using private IPs



**Architecture**


```text
                VNet Peering
        ┌─────────────────────────┐

   VNet1                      VNet2
10.0.0.0/16                10.1.0.0/16
     │                           │
     │                           │
   VM1                         VM2
10.0.1.x                    10.1.1.x

        └─────────────────────────┘
```


**Features**

Modular Terraform structure
Reusable modules
Dynamic resource creation using for_each
Azure Linux Virtual Machines
NSG association with NIC
Bidirectional VNet Peering
Private IP communication testing
NGINX installation support using custom_data


**Technologies Used**

Terraform
Microsoft Azure
Azure Virtual Network
Azure VNet Peering
Azure NSG
Ubuntu Linux VM


**Project Structure**


```text
.
├── module
│   ├── azurerm_resource_group
│   ├── azurerm_virtual_network
│   ├── azurerm_subnet
│   └── azurerm_virtual_machine
│
├── terraform.tfvars
├── provider.tf
├── variables.tf
├── main.tf
└── README.md
```
