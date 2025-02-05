provider "aws" {
  region = var.aws_region

  default_tags { // if u deployig to multiple regions, u can use this to add tags to all resources
    tags = {
      Automation = "Terraform"
      Project       = "var.project_name"
      Environment = "var.environment"
    }
  }
}