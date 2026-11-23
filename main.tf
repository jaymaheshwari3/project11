terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "project11" {
  bucket = "jay-project11-branching-demo-2026"

  tags = {
    Name        = "Project11"
    Environment = "Development"
  }
}

output "bucket_name" {
  value = aws_s3_bucket.project11.bucket
}
