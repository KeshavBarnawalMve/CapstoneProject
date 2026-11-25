variable "aws_region" {
  description = "AWS region for the GitOps deployment"
  type        = string
  default     = "ap-south-1"
}

variable "bucket_name" {
  description = "Globally unique name for the GitOps demo bucket"
  type        = string
}
