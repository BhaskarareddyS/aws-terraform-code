
### once s3 bucket created place below code and run terraform init it will copy to state file local to s3 location

terraform {
  backend "s3"{
    region     = "eu-west-2"
    bucket     = "sbrtechworld"
    key        = "terraform.tfstate"
    encrypt    = "false"
    profile    = "MyAWS"
  }
}



