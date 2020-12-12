provider "aws" {
    region =   "eu-west-2"
    profile = "MyAWS"
}


## 1st create only s3 bucket 
resource "aws_s3_bucket" "my-s3" {
  bucket = "sbrtechworld"
  acl    = "private"

  tags = {
    Name        = "Mybucket"
    Environment = "Dev"
  }
}

