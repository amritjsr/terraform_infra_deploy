resource "aws_s3_bucket" "this_bucket" {
  bucket = var.bucket_name

  tags = var.tags
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.this_bucket.id
  versioning_configuration {
    status = var.versioning_enabled
  }
}

