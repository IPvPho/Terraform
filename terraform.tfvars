rgs = {
  rg_one = {
    name     = "rg-tf-test-chriran-1"
    location = "eastus"
    tags = {
      ApplicationName     = "TECHWEEK"
      AppTypeRole         = "DC"
      DataProtection      = "NotProtected"
      DRTier              = "None"
      Environment         = "ATS"
      Location            = "USE1Z"
      NotificationContact = "chris.randall@foo.com"
      ProductCostCenter   = "ATS"
      ResourceType        = "Data"
      SupportResponseSLA  = "None"
      WorkloadType        = "ADEnvironment"
      Owner               = "Chris Randall"
    }
  }
  rg_two = {
    name     = "rg-tf-test-chriran-2"
    location = "eastus"
    tags = {
      ApplicationName     = "TECHWEEK"
      AppTypeRole         = "DC"
      DataProtection      = "NotProtected"
      DRTier              = "None"
      Environment         = "ATS"
      Location            = "USE1Z"
      NotificationContact = "chris.randall@foo.com"
      ProductCostCenter   = "ATS"
      ResourceType        = "Data"
      SupportResponseSLA  = "None"
      WorkloadType        = "ADEnvironment"
      Owner               = "Chris Randall"
    }
  }
}


vnets = {
  vnet_alpha = {
    name                = "vnet-alpha"
    location            = "eastus"
    resource_group_name = "rg-tf-test-chriran-1"
    address_space       = ["10.0.0.0/16"]

    subnets = {
      subnet_one = {
        name           = "subnet1"
        address_prefix = "10.0.1.0/24"
      }
      subnet_two = {
        name           = "subnet2"
        address_prefix = "10.0.2.0/24"
      }
      subnet_three = {
        name           = "subnet3"
        address_prefix = "10.0.3.0/24"
      }
    }
  }
  vnet_bravo = {
    name                = "vnet-bravo"
    location            = "eastus"
    resource_group_name = "rg-tf-test-chriran-2"
    address_space       = ["10.0.0.0/16"]
    subnets = {
      subnet_one = {
        name           = "subnet1"
        address_prefix = "10.0.1.0/24"
      }
      subnet_two = {
        name           = "subnet2"
        address_prefix = "10.0.2.0/24"
      }
      subnet_three = {
        name           = "subnet3"
        address_prefix = "10.0.3.0/24"
      }
    }
  }
}
