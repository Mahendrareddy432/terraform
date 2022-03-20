# Pprovider and region

provider "aws" {
region ="us_east_1"
}

## Ec2 instance creation

resource "aws_instance" "sample" {
    ami    = "ami-0bb6af715826253bf"
instance_type ="t2.micro"

tags = {
    Name = "sample"
  }
}

## Security group

resource "aws_security_group" "allow_sample" {
  name        = "allow_sample"
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
    Name = "allow_sample"
  }
}