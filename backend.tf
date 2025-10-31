terraform {
  backend "azurerm" {

    resource_group_name  = "demo-resources"                           # Can also be set via `ARM_USE_AZUREAD` environment variable.
    tenant_id            = "15f0a724-b752-4d18-8a94-92d3d7d4431f"     # Can also be set via `ARM_TENANT_ID` environment variable.
    client_id            = "fefcc4a5-e9ba-4f40-adf4-b3ac1d57bb05"     # Can also be set via `ARM_CLIENT_ID` environment variable.
    client_secret        = "W6r8Q~uomak5Gm5CMfHg7DLUXxuc5xEpDdSz7c_i" # Can also be set via `ARM_CLIENT_SECRET` environment variable.
    storage_account_name = "terraformdemo345"                         # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "tfcode"                                   # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "prod.terraform.tfstate"                   # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}
