rgs = {
    rg1 = {
        name = "rg-manu"
        location = "centralindia"
    }
}
vnet = {
    vnet1 = {
        name = "my-vnet"
        location = "centralindia"
        resource_group_name = "rg-manu"
        address_space = ["10.0.0.0/16"]
    }
}
snets = {
    snet1 = {
        name = "frontend-subnet"
        resource_group_name = "rg-manu"
        virtual_network_name = "my-vnet"
        address_prefixes = ["10.0.1.0/24"]
    }
    snet2 = {
        name = "backend-subnet"
        resource_group_name = "rg-manu"
        virtual_network_name = "my-vnet"
        address_prefixes = ["10.0.2.0/24"]
    }
    snet3 = {
        name = "database-subnet"
        resource_group_name = "rg-manu"
        virtual_network_name = "my-net"
        address_prefixes = ["10.0.3.0/24"]
    }
    snet4 = {
        name = "AzureBastionSubnet"
        resource_group_name = "rg-manu"
        virtual_network_name = "my-vnet"
        address_prefixes = ["10.0.4.0/26"]
    }
    snet5 = {
        name = {
            name = "ApplicationGatewaySubnet"
            resource_group_name = "rg-manu"
            virtual_network_name = "my-vnet"
            address_prefixes = ["10.0.5.0/26"]
        }
    }
}
pip = {
    Bastion_pip = {
        name = "Azurebastion_pip"
        location = "centralindia"
        resource_group_name = "rg-manu"
    }
    ApplicationGateway_pip = {
        name = "AppGateway_pip"
        location = "centralindia"
        resource_group_name = "rg-vnet"
    }
}