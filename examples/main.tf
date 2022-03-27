# Provider and region

 provider "aws" {
 region = "us-east-1"
 }

## Ec2 instance creation

resource "aws_instance" "mahendra1" {
    ami    = "ami-0bb6af715826253bf"
instance_type ="t2.micro"
vpc_security_group_ids=[aws_security_group.work1.id,"sg-04e822e0e4da32d30"]
##security              providername        localname
tags = {
    Name = "mahendra1"
  }
}

## Security group

resource "aws_security_group" "work1" {
  name        = "work1"
  description = "Allow TLS inbound traffic"
  #vpc_id      = aws_vpc.main.id

  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = []
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "work1"
  }
}