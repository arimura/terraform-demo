# Configure the AWS Provider
provider "aws" {
  region = var.aws_region
}

# Create S3 bucket
resource "aws_s3_bucket" "hoge" {
  bucket = "hoge2025062131"

  tags = {
    Name        = "hoge2025062131"
    Environment = var.environment
  }
}

# Configure S3 bucket versioning
resource "aws_s3_bucket_versioning" "hoge" {
  bucket = aws_s3_bucket.hoge.id
  versioning_configuration {
    status = "Enabled"
  }
}

# Configure S3 bucket server-side encryption
resource "aws_s3_bucket_server_side_encryption_configuration" "hoge" {
  bucket = aws_s3_bucket.hoge.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

# Block public access to S3 bucket
resource "aws_s3_bucket_public_access_block" "hoge" {
  bucket = aws_s3_bucket.hoge.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
