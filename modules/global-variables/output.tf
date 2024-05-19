output "account_id" {
  value = local.account_id[local.final_environment]
}

output "region" {
  value = local.region[local.final_environment]
}

output "company" {
  value = local.company
}

output "tags" {
  value = local.tags[local.final_environment]
}

output "environment" {
  value = local.final_environment
}
