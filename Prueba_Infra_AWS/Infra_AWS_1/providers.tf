terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.100.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.7.2"
    }
  }
  required_version = "1.13.4"
}
provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = var.tags
  }
}







