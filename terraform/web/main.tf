provider "aws" {

  region  = "us-east-1"
}

variable "devops1" {
  
  description = "devstack 1"
}

resource "aws_instance" "web" {
  ami           = "ami-04505e74c0741db8d"
  instance_type = "t2.micro"
  key_name = "devops1"

  tags = {
    Name = "web"
  }
}
