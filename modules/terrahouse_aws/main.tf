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



provider random {
}


resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name
  tags = {
    UserUuid    = var.user_uuid
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_website_configuration" "example" {
  bucket = aws_s3_bucket.my_bucket.bucket

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }

  routing_rule {
    condition {
      key_prefix_equals = "docs/"
    }
    redirect {
      replace_key_prefix_with = "documents/"
    }
  }
}

resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.my_bucket.bucket
  key    = "index.html"
  source = "modules/terrahouse_aws/public"

  # The filemd5() function is available in Terraform 0.11.12 and later
  # For Terraform 0.11.11 and earlier, use the md5() function and the file() function:
  # etag = "${md5(file("path/to/file"))}"
  etag = filemd5("modules/terrahouse_aws/public/index.html")
}



