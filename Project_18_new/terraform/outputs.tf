output "bucket_name" {
  description = "Name of the S3 bucket created by Terraform"
  value       = aws_s3_bucket.gitops_demo.bucket
}

output "bucket_arn" {
  description = "ARN of the S3 bucket"
  value       = aws_s3_bucket.gitops_demo.arn
}
