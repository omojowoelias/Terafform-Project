variable "aws_region" {
  description = "AWS region to deploy resources"
  default     = "us-east-2"
  type = string
  
}

variable "project_name" {
  description = "Name of the project"
  type = string
  
}

variable "environment" {
  description = "Environment to deploy resources"
  type = string
  
}
variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type = string
  
}