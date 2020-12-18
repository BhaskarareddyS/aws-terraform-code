provider "aws" {
    region =   var.aws_region
    profile = "MyAWS"
}


resource "aws_instance" "web" {
  ami           = lookup(var.region_ami, var.aws_region)
  instance_type = "t3.micro"
  key_name = "youtube"

  tags = {
    Name = "ec2-dev"
  }
}


