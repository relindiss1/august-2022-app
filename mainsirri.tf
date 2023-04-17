resource "aws_vpc" "TFVPC" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "TFVPC"
  }
}

resource "aws_subnet" "webapp_1" {
  vpc_id     = aws_vpc.TFVPC.id
  cidr_block = var.cidr_webapp_1

  tags = {
    Name = "webapp_1"
  }
}
resource "aws_subnet" "webapp_2" {
  vpc_id     = aws_vpc.TFVPC.id
  cidr_block = var.cidr_webapp_2 

  tags = {
    Name = "webapp_2"
  }
}

resource "aws_subnet" "webapp_3" {
  vpc_id     = aws_vpc.TFVPC.id
  cidr_block = var.cidr_webapp_3

  tags = {
    Name = "webapp_3"
  }
}
resource "aws_subnet" "webapp_4" {
  vpc_id     = aws_vpc.TFVPC.id
  cidr_block = var.cidr_webapp_4

  tags = {
    Name = "webapp_4"
  }
}

resource "aws_security_group" "SG_Dev" {
  name        = "SG_Dev"
  description = "Allow HTTPS inbound traffic from port 443"
  vpc_id      = aws_vpc.TFVPC.id

  ingress {
    description      = "HTTPS Access"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["10.0.0.0/16"]
   
#  tags = {
#     Name = "enable_HTTPS"
#   }
}
}







