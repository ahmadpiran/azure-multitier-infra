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


variable "backend_address_pool_name" {
    default = "myBackendPool"
}

variable "frontend_port_name" {
    default = "myFrontendPort"
}

variable "frontend_ip_configuration_name" {
    default = "myAGIPConfig"
}

variable "http_setting_name" {
    default = "myHTTPsetting"
}

variable "listener_name" {
    default = "myListener"
}

variable "request_routing_rule_name" {
    default = "myRoutingRule"
}