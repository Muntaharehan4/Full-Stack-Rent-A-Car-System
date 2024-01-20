variable "location" {
  type        = string
  description = "Location for all resources."
  default     = "westus"
}

variable "rgname" {
  type        = string
  description = "The resource group name"
  default     = "muntahastest_rg"
}

variable "sqlname" {
  type        = string
  description = "The name of the SQL SERVER."
  default     = "muntahastestserver"
}
variable "sql_db_name" {
  type        = string
  description = "The name of the SQL Database."
  default     = "muntahastest_db"
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
  default     = "muntahastest_asp"
}

variable "webapp01" {
  type        = string
  description = "The name of Frontend App service."
  default     = "muntahastest-frontend"
}

variable "webapp02" {
  type        = string
  description = "The name of Backend App service."
  default     = "muntahastest-backend"
}

variable "kvname" {
  type        = string
  description = "The name of KeyVault."
  default     = "muntahastestkv"
}

variable "vn_name" {
  type        = string
  description = "The name of KeyVault."
  default     = "muntahastestvnet"
}

variable "subnet_name" {
  type        = string
  description = "The name of Subnet."
  default     = "muntahastestsubnet"
}
variable "acrname" {
  type        = string
  description = "The name of ACR."
  default     = "muntahastestacr"
}
