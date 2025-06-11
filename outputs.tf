# Hoge bucket outputs
output "hoge_bucket_name" {
  description = "Name of the hoge S3 bucket"
  value       = module.hoge_bucket.bucket_id
}

output "hoge_bucket_arn" {
  description = "ARN of the hoge S3 bucket"
  value       = module.hoge_bucket.bucket_arn
}

output "hoge_bucket_domain_name" {
  description = "Domain name of the hoge S3 bucket"
  value       = module.hoge_bucket.bucket_domain_name
}

# Foo bucket outputs
output "foo_bucket_name" {
  description = "Name of the foo S3 bucket"
  value       = module.foo_bucket.bucket_id
}

output "foo_bucket_arn" {
  description = "ARN of the foo S3 bucket"
  value       = module.foo_bucket.bucket_arn
}

output "foo_bucket_domain_name" {
  description = "Domain name of the foo S3 bucket"
  value       = module.foo_bucket.bucket_domain_name
}

# Bar bucket outputs
output "bar_bucket_name" {
  description = "Name of the bar S3 bucket"
  value       = module.bar_bucket.bucket_id
}

output "bar_bucket_arn" {
  description = "ARN of the bar S3 bucket"
  value       = module.bar_bucket.bucket_arn
}

output "bar_bucket_domain_name" {
  description = "Domain name of the bar S3 bucket"
  value       = module.bar_bucket.bucket_domain_name
}
