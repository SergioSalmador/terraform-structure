variable "company" {
  description = "Name of the company"
  type        = string
}

variable "environment" {
  description = "Deployment environment (e.g., dev, prod)"
  type        = string
}

variable "region" {
  description = "AWS region"
  type        = string
}

variable "team" {
  description = "Name of the team"
  type = string
}
