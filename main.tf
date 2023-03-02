resource "azurerm_sql_server" "example" {
  name                         = var.server_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = var.server_version
  administrator_login          = var.administrator_login
  administrator_login_password = var.administrator_login_password
  connection_policy            = var.connection_policy



}

resource "azurerm_sql_database" "example" {
  name                             = var.db_name
  resource_group_name              = var.resource_group_name
  location                         = var.location
  server_name                      = var.serve_name
  requested_service_objective_name = var.requested_service_objective_name
  create_mode                      = var.create_mode
  edition                          = var.edition


  depends_on = [
    azurerm_sql_server.example
  ]
}
# resource "azurerm_private_endpoint" "endpoint" {
#   name                = var.private_endpoint_name
#   location            = var.location
#   resource_group_name = var.resource_group_name
#   subnet_id           = var.private_endpoint_subnet_id

#   private_service_connection {
#     name                           = "${var.private_endpoint_name}-connection"
#     private_connection_resource_id = azurerm_sql_server.example.id
#     is_manual_connection           = var.is_manual_connection
#     subresource_names              = ["sqlServer"]

#   }
#   depends_on = [
#     azurerm_sql_server.example
#   ]

# }