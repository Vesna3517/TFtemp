terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.57.1"
    }
  }
}


resource "aws_instance" "build" {
  ami           = "ami-0e067cc8a2b58de59"
  instance_type = "t2.micro"
  key_name      = "depkey"
  vpc_security_group_ids = ["sg-09497a8983bc03a7a"]

  tags = {
    Name = "build"
  }
}