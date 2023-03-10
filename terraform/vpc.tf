resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support   = true 
  enable_dns_hostnames = true
}


resource "aws_subnet" "private_subnet" {
  vpc_id            = aws_vpc.vpc.id  
  availability_zone = "eu-central-1a"        
  cidr_block = "10.0.1.0/24"
}

resource "aws_subnet" "public_subnet" {
  vpc_id            = aws_vpc.vpc.id
  availability_zone = "eu-central-1b"    
  cidr_block        = "10.0.2.0/24"

}   