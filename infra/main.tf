terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0aff18ec83b712f05"
  instance_type = "t2.micro"
  key_name = "IaC-AWS"
  
  tags = {
    Name = "Terraform Ansible Pynthon"
  }
}
resource "aws_key_pair" "chaveSSH" {
  key_name = "IaC-dev"
  public_key = file("IaC-dev.pub")
}