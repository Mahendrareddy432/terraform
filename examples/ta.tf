
resource "aws_instance" "data" {
    ami = "ami-0bb6af715826253bf"
  vpc_security_group_ids = [aws_security_group.mongo.id]
  tags = {
       Name = "data"
  }
}

resource "aws_security_group" "mongo" {
  name        = "sql"
  description = "Allow TLS inbound traffic"
 # vpc_id      = aws_vpc.main.id

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
    Name = "mongo"
  }
}