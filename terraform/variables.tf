variable "location" {
  type        = string
  description = "Location for all resources."
  default     = "eastus"
}

variable "rgname" {
  type        = string
  description = "The resource group name"
  default     = "test53_rg"
}

variable "sqlname" {
  type        = string
  description = "The name of the SQL SERVER."
  default     = "test53server"
}
variable "sql_db_name" {
  type        = string
  description = "The name of the SQL Database."
  default     = "test53_db"
}

variable "username" {
  type        = string
  description = "The administrator username of the SQL logical server."
  default     = "assignmentadmin"
}

variable "password" {
  type        = string
  description = "The administrator password of the SQL logical server."
  sensitive   = true
  default     = null
}
variable "aspname" {
  type        = string
  description = "The name of App Service Plan."
  default     = "test53_asp"
}

variable "webapp01" {
  type        = string
  description = "The name of Frontend App service."
  default     = "frontend"
}

variable "webapp02" {
  type        = string
  description = "The name of Backend App service."
  default     = "backend"
}

variable "kvname" {
  type        = string
  description = "The name of KeyVault."
  default     = "test53kv"
}

variable "vn_name" {
  type        = string
  description = "The name of KeyVault."
  default     = "test53vnet"
}

variable "subnet_name" {
  type        = string
  description = "The name of Subnet."
  default     = "test53subnet"
}
variable "acrname" {
  type        = string
  description = "The name of ACR."
  default     = "test53acr"
}
