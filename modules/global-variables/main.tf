# main.tf

locals {

  current_dir_list = split("/", path.cwd)
  environment_from_dir = contains(local.current_dir_list, "production") ? "production" : (
    contains(local.current_dir_list, "staging") ? "staging" : "development"
  )
  
  final_environment = var.environment != "" ? var.environment : local.environment_from_dir
  
  account_id = {
    development = "682316072122"
    staging     = "015461093256"
    production  = "924017552211"
  }
  
  region = {
    development = "us-west-1"
    staging     = "us-west-1"
    production  = "us-west-1"
  }

  company = "my-company"
  
  environment= var.environment
  
  tags = {
    development = {
      environment = "development"
      company     = "MyCompany"
      region      = "us-west-1"
    }
    staging = {
      environment = "staging"
      company     = "MyCompany"
      region      = "us-west-1"
    }
    production = {
      environment = "production"
      company     = "MyCompany"
      region      = "us-east-1"
    }
  }
}

