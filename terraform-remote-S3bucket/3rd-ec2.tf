resource "aws_instance" "web" {
  ami           = "ami-06178cf087598769c"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}