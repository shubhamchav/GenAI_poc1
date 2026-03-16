terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70.0" # Intentionally outdated for update testing
    }
  }
}

provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "demo" {
  bucket = "tf-poc-bucket-automated-update-test"
  acl    = "private"
}
