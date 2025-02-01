variable "user_uuid" {
    description = "The UUID of the user"
    type        = string


    validation {
        condition     = length(var.user_uuid) == 4
        error_message = "The user_uuid must be exactly 36 characters long."
    }
}

