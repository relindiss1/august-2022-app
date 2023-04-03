resource "aws_instance" "test_instance" {
  ami           = "ami-00c39f71452c08778"
  instance_type = "t2.nano"
  tags = {
    Name = "test_instance"
  }
}