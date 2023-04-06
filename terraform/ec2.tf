resource "aws_instance" "docker" {
  ami  = "ami-06e46074ae430fba6"
  count = 2
  instance_type = "t2.micro"
  key_name = "docker-demo"

  tags = {
    Name = "docker-${count.index}"
  }
}
