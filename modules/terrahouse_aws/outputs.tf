output "bucket_name" {
    value = aws_s3_bucket.my_bucket.bucket
} 

output "user_uuid" {
    value = var.user_uuid
}

output "s3_website_endpoint" {
    description = "S3 static website endpoint"
    value = aws_s3_bucket.my_bucket.website_endpoint
}

