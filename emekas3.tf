provider "aws" {
  region = "us-east-1"
}

# Create a private s3 bucket

resource "aws_s3_bucket" "devops_class" {
  bucket = "augustdev01"

  tags = {
    Name      = "Our_Bucket"
  }
}

resource "aws_s3_bucket_acl" "class_policy" {
  bucket = aws_s3_bucket.devops_class.id
  acl    = "private"
}