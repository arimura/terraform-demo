# Configure the AWS Provider
provider "aws" {
  region = var.aws_region
}

# Create S3 buckets using module
module "hoge_bucket" {
  source = "./modules/s3-bucket"
  
  bucket_name = "hoge2025062131"
  environment = var.environment
}

module "foo_bucket" {
  source = "./modules/s3-bucket"
  
  bucket_name = "foo2025062131"
  environment = var.environment
}

module "bar_bucket" {
  source = "./modules/s3-bucket"
  
  bucket_name = "bar2025062131"
  environment = var.environment
}
