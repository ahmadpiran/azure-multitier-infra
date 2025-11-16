variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "multitier-infra-rg"
}

variable "resource_group_location" {
  description = "Location of the resource group"
  type        = string
  default     = "francecentral"
}

variable "virtual_network_name" {
  description = "Name of the main virtual network"
  type        = string
  default     = "vnet-prod-001"
}