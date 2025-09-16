resource "aws_vpc" "this_vpc" {
  
  cidr_block            = var.cidr_block
  region                = var.region
  enable_dns_support    = true
  enable_dns_hostnames  = true
  tags                  = var.tags
}
