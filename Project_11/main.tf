terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "project11_bucket" {
  bucket = "project11-demo-bucket-123456"

  tags = {
    Name        = "Project11Bucket"
    Environment = "Dev"
  }
}
