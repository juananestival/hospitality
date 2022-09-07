provider "google" {
  project = var.project
  region  = var.region
}

module "wh_function_main" {
    source               = "./modules/functions"
     project              = var.project
     function_name        = "hospitality-main"
     function_entry_point = "hospitalityMainWH"
     }
