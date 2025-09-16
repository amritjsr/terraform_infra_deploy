variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "versioning_enabled" {
  description = "Enable versioning"
  type        = string
  default     = "Disabled"
}

variable "acl" {
  description = "Canned ACL to apply"
  type        = string
  default     = "private"
}

variable "tags" {
  description = "Tags to apply to the bucket"
  type        = map(string)
  default     = {}
}
