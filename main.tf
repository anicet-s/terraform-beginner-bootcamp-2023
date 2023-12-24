
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
  length           = 16
  special          = false
}

output "bucket_name_random"{
    value =random_string.bucket_name.id
}





