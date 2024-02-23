provider "aws" {
    region = "us-east-2"  
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-tf-test-bucket-1234321234"
  acl  = "private"

  tags = {
    Name      = "My bucket"
    Environment = "Development"
    managedby =  "terraform"
  }
}
output "bucket_fqdn" {
    value = aws_s3_bucket.my-test-bucket
    description = "fqdn of bucket"
}
