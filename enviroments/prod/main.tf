module "azurerm_resource_group" {
    source = "../../modules/azurerm_resource_group"
    rgs = var.rgs
  
}
module "azurerm_virtual_network" {
    depends_on = [ module.azurerm_resource_group ]
    source = "../../modules/azurerm_virtual_network"
    vnet = var.vnet
  
}
module "azurerm_subnet" {
    depends_on = [module.azurerm_virtual_network]
    source = "../../modules/azurerm_subnet"
    snets = var.snets
  
}
module "azurerm_public_ip" {
    depends_on = [ module.azurerm_resource_group ]
    source = "../../modules/azurerm_public_ip"
    pip = var.pip
  
}