variable "aws_region" {
    default = "eu-west-2"
  }

variable "key_name" {
  default = "youtube"
}
  variable "ec2_types" {
    default = "t2.micro"
  }

variable "region_ami" {
  type = map

  default = {
   eu-west-1 = "ami-06178cf087598769c",
   eu-west-2 = "ami-08b993f76f42c3e2f",
   eu-west-3 = "ami-0083960c1530c641f",
   us-east-1 = "ami-0a01a5636f3c4f21c"
  }
}


