variable "location" {
  type        = string
  description = "Location for all resources."
  default     = "eastus"
}

variable "rgname" {
  type        = string
  description = "The resource group name"
  default     = "muntahapoc1_rg"
}

variable "sqlname" {
  type        = string
  description = "The name of the SQL SERVER."
  default     = "muntahapoc1server"
}
variable "sql_db_name" {
  type        = string
  description = "The name of the SQL Database."
  default     = "muntahapoc1_db"
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
  default     = "muntahapoc1_asp"
}

variable "webapp01" {
  type        = string
  description = "The name of Frontend App service."
  default     = "muntahapoc1-frontend"
}

variable "webapp02" {
  type        = string
  description = "The name of Backend App service."
  default     = "muntahapoc1-backend"
}

variable "kvname" {
  type        = string
  description = "The name of KeyVault."
  default     = "muntahapoc1kv"
}

variable "vn_name" {
  type        = string
  description = "The name of KeyVault."
  default     = "muntahapoc1vnet"
}

variable "subnet_name" {
  type        = string
  description = "The name of Subnet."
  default     = "muntahapoc1subnet"
}
variable "acrname" {
  type        = string
  description = "The name of ACR."
  default     = "muntahapoc1acr"
}
