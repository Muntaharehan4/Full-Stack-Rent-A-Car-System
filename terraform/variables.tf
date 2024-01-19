variable "location" {
  type        = string
  description = "Location for all resources."
  default     = "eastus"
}

variable "rgname" {
  type        = string
  description = "The resource group name"
  default     = "muntahatest_rg"
}

variable "sqlname" {
  type        = string
  description = "The name of the SQL SERVER."
  default     = "muntahatestserver"
}
variable "sql_db_name" {
  type        = string
  description = "The name of the SQL Database."
  default     = "muntahatest_db"
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
  default     = "muntahatest_asp"
}

variable "webapp01" {
  type        = string
  description = "The name of Frontend App service."
  default     = "muntaha-frontend"
}

variable "webapp02" {
  type        = string
  description = "The name of Backend App service."
  default     = "muntaha-backend"
}

variable "kvname" {
  type        = string
  description = "The name of KeyVault."
  default     = "muntahatestkv"
}

variable "vn_name" {
  type        = string
  description = "The name of KeyVault."
  default     = "muntahatestvnet"
}

variable "subnet_name" {
  type        = string
  description = "The name of Subnet."
  default     = "muntahatestsubnet"
}
variable "acrname" {
  type        = string
  description = "The name of ACR."
  default     = "muntahatestacr"
}
