terraform {
  cloud {
    organization = "my-asa-org"

    workspaces {
      name = "terra-house-1"
    }
  }
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.6.3"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }

}





module "terrahouse_aws" {
  source = "./modules/terrahouse_aws"
}

data "aws_ami" "my_linux_ami" {
  most_recent = true
  filter {
    name   = "image-id"
    values = ["ami-053a45fff0a704a47"]
  }
}