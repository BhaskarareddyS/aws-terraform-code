variable "aws_region" {
  default = "eu-west-2"
}

variable "profile" {
  default = "MyAWS"
}

variable "ec2_ami" {
  default = "ami-06178cf087598769c"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ec2_keypair" {
  default = "youtube"
}

variable "ec2_count" {
  type = number
  default = "6"
}

variable "environment" {
  default = "dev"
}

variable "product" {
  default = "sales"
}
variable "vpc_id" {
  default = "vpc-a55717cd"
}
variable "subnets" {
   default = ["subnet-5d861027","subnet-e33e9baf","subnet-70713b19"]
}


