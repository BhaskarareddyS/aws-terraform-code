

resource "aws_instance" "web" {
  ami           = "ami-06178cf087598769c"
  instance_type = "t2.micro"
  key_name = "class"

  tags = {
        Name = "provisioner-remote"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo yum install -y nginx",
      "sudo systemctl start nginx"     
    ]
     
     connection {
         type = "ssh"
         user = "ec2-user"
         private_key = file("./class.pem")
         host = self.public_ip
     }
  }
}




 

   