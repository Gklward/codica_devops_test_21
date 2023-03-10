terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>4.57.0"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
}


resource "aws_instance" "web" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  vpc_security_group_ids      = [aws_security_group.ec2_sg.id    ]
  subnet_id                   =  aws_subnet.public_subnet.id
  associate_public_ip_address = true
  key_name                    = "Gkl"

}
