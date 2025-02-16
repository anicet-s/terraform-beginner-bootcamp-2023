output "bucket_name_random"{
    value =random_string.bucket_name.id
}

output "bucket_name" {
    value = aws_s3_bucket.my_bucket.bucket
} 

output "user_uuid" {
    value = var.user_uuid
}

