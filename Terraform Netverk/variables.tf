variable "location" {
  description = "The Azure region to deploy to"
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "my-resource-group"
}

variable "vnet_name" {
  description = "The name of the virtual network"
  type        = string
  default     = "my-vnet"
}

variable "vnet_address_space" {
  description = "The address space of the virtual network"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_count" {
  description = "Number of subnets"
  type        = number
  default     = 2
}

variable "subnet_names" {
  description = "Names of the subnets"
  type        = list(string)
  default     = ["subnet1", "subnet2"]
}

variable "subnet_address_prefixes" {
  description = "Address prefixes for the subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}