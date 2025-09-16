variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "tags" {
  description = "Tags for resources"
  type        = map(string)
  default     = {}
}

variable "region" {
    description = "Which region to deploy the VPC in"
    type        = string
    default     = "us-east-1"
}