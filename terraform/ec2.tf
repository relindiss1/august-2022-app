# resource "aws_instance" "docker" {
#   ami                         = "ami-06e46074ae430fba6"
#   count                       = 2
#   instance_type               = "t2.micro"
#   associate_public_ip_address = true
#   key_name                    = "docker-demo"
#   vpc_security_group_ids      = [aws_security_group.docker.id]
#   subnet_id                   = aws_subnet.demo_public-1.id

#   tags = {
#     Name = "docker-${count.index}"
#   }
# }

# resource "aws_security_group" "docker" {
#   name        = "docker_sg"
#   description = "Allow TLS inbound traffic"
#   vpc_id      = aws_vpc.demo.id

#   ingress {
#     description      = "TLS from VPC"
#     from_port        = 80
#     to_port          = 80
#     protocol         = "tcp"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }

#   egress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }

#   tags = {
#     Name = "docker-demo-${var.environment}"
#   }
# }