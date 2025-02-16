terraform {
    cloud {
        organization = "my-asa-org"
    
        workspaces {
        name = "terra-house-1"
        }
    }
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.6.3"
    }
    aws = {
      source = "hashicorp/aws"
      version = "5.84.0"
    }
  }
}



provider "random" {
  # Configuration options
}

resource "random_string" "bucket_name" {
  lower = true
  upper = false
  length           = 20
  special          = false
}



resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name
  tags = {
    UserUuid    = var.user_uuid
    Name        = "My bucket"
    Environment = "Dev"
  }
}



