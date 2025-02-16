variable "user_uuid" {
    description = "The UUID of the user"
    type        = string
    default     = "post"


    validation {
        condition     = length(var.user_uuid) == 4
        error_message = "The user_uuid must be exactly 36 characters long."
    }
}

variable "region" {
    description = "The region in which the resources will be created"
    type        = string
    default     = "us-east-1"
}

variable "bucket_name" {
    description = "The name of the S3 bucket"
    type        = string
    default     = "as-anime-marketplace"
}
