resource "aws_s3_bucket" "this_bucket" {
  bucket = var.bucket_name

  tags = var.tags
}

#resource "aws_s3_bucket_acl" "example" {
#  bucket = aws_s3_bucket.this_bucket.id
#  acl    = var.acl
#}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.this_bucket.id
  versioning_configuration {
    status = var.versioning_enabled
  }
}

output "bucket_id" {
  value = aws_s3_bucket.this_bucket.id
}

output "bucket_arn" {
  value = aws_s3_bucket.this_bucket.arn
}
