provider "aws" {
  region = "us-east-1"  # Ajusta la región según tus necesidades
}

resource "aws_s3_bucket" "image_bucket" {
  bucket = "my-image-bucket"
}

resource "aws_s3_bucket_acl" "image_bucket_acl" {
  bucket = aws_s3_bucket.image_bucket.bucket
  acl    = "private"
}