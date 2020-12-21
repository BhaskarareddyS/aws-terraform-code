provider "aws" {
    region =   var.aws_region
    profile = var.profile_name
}
resource "aws_instance" "ec2-1" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id = var.subnet2a
  count = var.condition == true ? 2 : 0
  tags = {
    Name = "ec2-prod"
  }
}
resource "aws_instance" "ec2-2" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id = var.subnet2a
  count = var.condition == false ? 1 : 0
  tags = {
    Name = "ec2-dev"
  }
}


