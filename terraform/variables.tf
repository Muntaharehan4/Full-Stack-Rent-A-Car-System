variable "location" {
  type        = string
  description = "Location for all resources."
  default     = "eastus"
}

variable "rgname" {
  type        = string
  description = "The resource group name"
  default     = "muntha_rg"
}

variable "sqlname" {
  type        = string
  description = "The name of the SQL SERVER."
  default     = "munthaserver"
}
variable "sql_db_name" {
  type        = string
  description = "The name of the SQL Database."
  default     = "muntha_db"
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
  default     = "muntha_asp"
}

variable "webapp01" {
  type        = string
  description = "The name of Frontend App service."
  default     = "muntha-frontend"
}

variable "webapp02" {
  type        = string
  description = "The name of Backend App service."
  default     = "muntha-backend"
}

variable "kvname" {
  type        = string
  description = "The name of KeyVault."
  default     = "munthakv"
}

variable "vn_name" {
  type        = string
  description = "The name of KeyVault."
  default     = "munthavnet"
}

variable "subnet_name" {
  type        = string
  description = "The name of Subnet."
  default     = "munthasubnet"
}
variable "acrname" {
  type        = string
  description = "The name of ACR."
  default     = "munthaacr"
}
