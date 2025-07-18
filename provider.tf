terraform {
 backend "azurerm" {
   storage_account_name = "tflockstatefile"
   container_name = "tflock1"
   resource_group_name = "ex-state"
   key = "terraform.tfstate"   
 }
}

provider "azurerm" {
 
 features {
  
 }
}