
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0"
    }

    random = {
      source = "hashicorp/random"
      version = "3.6.0"
    }
  }
}

provider "aws" {
  # Configuration options
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

output "bucket_name_random"{
    value =random_string.bucket_name.id
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = random_string.bucket_name.id
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}




