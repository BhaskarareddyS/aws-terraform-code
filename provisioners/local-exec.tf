
provider "aws" {
    region =   "eu-west-2"
    profile = "MyAWS"
}

resource "aws_instance" "ec2" {
  ami           = "ami-06178cf087598769c"
  instance_type = "t2.micro"
  key_name = "class"

  tags = {
        Name = "provisioner-local"
  }
  provisioner "local-exec" {
    command = "echo ${aws_instance.ec2.public_ip} >> public_ip.txt"
  }
  }
  



 

   