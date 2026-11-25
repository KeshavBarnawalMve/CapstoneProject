terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "gitops_demo" {
  bucket = var.bucket_name

  tags = {
    Name        = "Project-18-GitOps-Demo"
    Environment = "GitOps"
    ManagedBy   = "Terraform"
  }
}
