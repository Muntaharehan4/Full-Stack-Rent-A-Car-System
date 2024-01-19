variable "location" {
  type        = string
  description = "Location for all resources."
  default     = "eastus"
}

variable "rgname" {
  type        = string
  description = "The resource group name"
  default     = "muntaha_rg"
}

variable "sqlname" {
  type        = string
  description = "The name of the SQL SERVER."
  default     = "muntahaserver"
}
variable "sql_db_name" {
  type        = string
  description = "The name of the SQL Database."
  default     = "muntaha_db"
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
  default     = "muntaha_asp"
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
  default     = "muntahakv"
}

variable "vn_name" {
  type        = string
  description = "The name of KeyVault."
  default     = "muntahavnet"
}

variable "subnet_name" {
  type        = string
  description = "The name of Subnet."
  default     = "muntahasubnet"
}
variable "acrname" {
  type        = string
  description = "The name of ACR."
  default     = "muntahaacr"
}
