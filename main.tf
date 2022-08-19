terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.26.0"
    }
  }
}

variable "AWS_ACCESS_KEY_ID"{
  type = string
}

variable "AWS_SECRET_ACCESS_KEY" {
  type = string
}

provider "aws" {
  region  = "us-east-1"
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
}

resource "aws_instance" "web" {
  ami           = "ami-0f9fc25dd2506cf6d"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}
