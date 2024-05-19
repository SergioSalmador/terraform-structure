locals {
  short_region = {
    us-west-1 = "usw1"
    us-west-2 = "usw2"
  }

  short_region_value = lookup(local.short_region, var.region, var.region)
  
  bucket_name = format("%s-%s-%s-%s", var.company, var.team, local.short_region_value, var.environment)
  
}