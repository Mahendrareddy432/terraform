# provider "aws" {
# region = "us-east-1"
# }

# resource "allow_sample" "work" {
#     ami     ="0bb6af715826253bf"
# instance_type="t3micro"
# vpc_security_group_ids=[aws.security.group.mahe.id]
# tags = {
#     Name = "work"
#   }
# }

# resource "aws_security_group" "mahe" {
#   name        = "mahe"
#   description = "Allow TLS inbound traffic"
#   vpc_id      = aws_vpc.main.id

#   ingress {
#     description      = "TLS from VPC"
#     from_port        = 22
#     to_port          = 22
#     protocol         = "tcp"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = []
#   }

#   egress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }

#   tags = {
#     Name = "mahe"
#   }
# }

