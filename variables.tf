
variable "resource_group_name" {
  type        = string
  description = "location of the resource group"
}

variable "location" {
  type        = string
  description = "name of the azurerm_storage_account"
}

variable "server_version" {
  type        = string
  description = "name of the azurerm_app_service_plan"
}

variable "administrator_login" {
  type        = string
  description = "name of the azurerm_logic_app_standard"
}

variable "administrator_login_password" {
  type        = string
  description = "(optional) describe your variable"
}


variable "connection_policy" {
  type        = string
  description = "Specifies the plan's pricing tier."
}
variable "db_name" {
  type        = string
  description = "name of the resource group"
}
variable "serve_name" {
  type        = string
  description = "name of the azurerm_app_service_plan"
}

variable "requested_service_objective_name" {
  type        = string
  description = "name of the azurerm_logic_app_standard"
}

variable "edition" {
  type        = string
  description = "(optional) describe your variable"
}

variable "create_mode" {
  type        = string
  description = "(optional) describe your variable"
}
variable "server_name" {
  type        = string
  description = "(optional) describe your variable"
}

# variable "private_endpoint_subnet_id" {
#   type        = string
#   description = "The subnet where the API gateway will be created in."
# }
# variable "private_endpoint_name" {
#   type = string
#   description = "Name of the private endpoint used by the api gateway"
  
# }


# variable "is_manual_connection" {
#   type = bool
#   description = "Manual connection or not"
#   default = false
  
# }
