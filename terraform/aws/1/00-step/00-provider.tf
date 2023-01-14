terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region                   = "us-west-2"
  shared_config_files      = ["~/.aws/conf"]
  shared_credentials_files = ["~/.aws/creds"]
  profile                  = "l3onav"
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}
