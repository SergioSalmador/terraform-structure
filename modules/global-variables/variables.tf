# variables.tf

variable "environment" {
  description = "Deployment environment (e.g., development, staging, production)"
  type        = string
  default     = ""
}
