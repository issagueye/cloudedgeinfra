terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.26.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "admin-cloudedge"
}

resource "aws_instance" "web" {
  ami           = "ami-0f9fc25dd2506cf6d"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}
