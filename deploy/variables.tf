variable "prefix" {
  default = "raad"
}

variable "project" {
  default = "recipe-app-api-devops"
}

variable "contact" {
  default = "eddie.khor@gmail.com"
}

variable "db_username" {
  description = "username for RDS postgresql"
}

variable "db_password" {
  description = "password for RDS postgresql"
}

variable "bastion_key_name" {
  default = "RecipeAppAPIDevOps-Bastion"
}

variable "ecr_image_api" {
  description = "ECR image for API"
  default     = "145319473435.dkr.ecr.us-east-1.amazonaws.com/recipe-app-api-devops:latest"
}

variable "ecr_image_proxy" {
  description = "ECR image for proxy"
  default     = "145319473435.dkr.ecr.us-east-1.amazonaws.com/recipe-app-api-proxy:latest"
}

variable "django_secret_key" {
  description = "Secret Key for Django App"
}

variable "dns_zone_name" {
  description = "domain name"
  default     = "mydomain.net"
}

variable "subdomain" {
  description = "subdomain for each environment"
  type        = map(string)
  default = {
    production = "api"
    staging    = "api.staging"
    dev        = "api.dev"
  }
}
