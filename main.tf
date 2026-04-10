terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.84.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "921292479940-daviddager"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    owner       = "daviddager"
    bootcamp    = "devops"
  }
}
