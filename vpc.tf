# Create VPC
# Create a VPC with the specified CIDR block. The VPC will have DNS support and DNS hostnames enabled. The VPC will be tagged with the project name and environment.
# terraform aws vpc
resource "aws_vpc" "vpc" {
  cidr_block =  var.vpc_cidr_block
  instance_tenancy = "default"
  enable_dns_support = true
  enable_dns_hostnames = true

  tags = {
    Name = "${var.project_name}-${var.environment}-vpc"
  }

}

# Create an Internet Gateway and attach it to the VPC
# terraform aws internet gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "${var.project_name}-${var.environment}-igw"
  }
}