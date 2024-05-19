
module "global_variables" {
  source = "../../modules/global-variables"
  environment = "production"
}

module "naming" {
  source = "../../modules/naming"
  company = module.global_variables.company
  environment = module.global_variables.environment
  region = module.global_variables.region
  team = "marketing"
}

resource "aws_s3_bucket" "marketing" {
  bucket = module.naming.bucket_name
  tags = module.global_variables.tags
}