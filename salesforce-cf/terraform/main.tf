provider "google" {
  project = var.project
  region  = var.region
}
## Adding secrets for Salesforce Authentication

## Enable API


module "wh_function_main" {
    source               = "./modules/functions"
     project              = var.project
     function_name        = "hospitality-sfdc-wh"
     function_entry_point = "main"
     }
     
module "secrets" {
    source               = "./modules/secrets"
     project              = var.project
     }
