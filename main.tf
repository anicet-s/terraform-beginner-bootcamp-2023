
terraform {
  cloud {
    organization = "my-asa-org"

    workspaces {
      name = "terra-house-1"
    }
  }


}







resource "random_string" "bucket_name" {
  lower = true
  upper = false
  length           = 20
  special          = false
}



resource "aws_s3_bucket" "my_bucket" {
  bucket = random_string.bucket_name.id
  tags = {
    UserUuid    = var.user_uuid
    Name        = "My bucket"
    Environment = "Dev"
  }
}




