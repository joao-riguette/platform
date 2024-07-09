locals {
  common_tags = {
    Project = "Playground"
    Environment = terraform.workspace
    ManagedBy = "Terraform"
  }
}