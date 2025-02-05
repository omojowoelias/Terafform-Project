terraform {
  backend "s3" {
    bucket         = "terraform-bucketproject-state"
    key            = "environment/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform-dynamoproect-table"
  }
}

