

# # Creat vpc, name, tag and CIDR

# resource "aws_vpc" "demo" {
#   cidr_block           = "10.0.0.0/16"
#   instance_tenancy     = "default"
#   enable_dns_support   = "true"
#   enable_dns_hostnames = "true"
#   tags = {
#     Name = "demo"
#   }
# }

# # Creating public subnets in VPC 
# resource "aws_subnet" "demo_public-1" {
#   vpc_id                  = aws_vpc.demo.id
#   cidr_block              = "10.0.1.0/24"
#   map_public_ip_on_launch = "true"
#   availability_zone       = "us-east-1a"
#   tags = {
#     Name = "demo_public-1"
#   }
# }

# resource "aws_subnet" "demo_public-2" {
#   vpc_id                  = aws_vpc.demo.id
#   cidr_block              = "10.0.2.0/24"
#   map_public_ip_on_launch = "true"
#   availability_zone       = "us-east-1b"
#   tags = {
#     Name = "demo_public-2"
#   }
# }

# # Creating IGW in aws VPC
# resource "aws_internet_gateway" "myIGW" {
#   vpc_id = aws_vpc.demo.id
#   tags = {
#     Name = "myIGW"
#   }
# }

# # Creating private subnets
# resource "aws_subnet" "demo_private-1" {
#   vpc_id            = aws_vpc.demo.id
#   cidr_block        = "10.0.3.0/24"
#   availability_zone = "us-east-1a"
#   tags = {
#     Name = "AppTier_priv_sub"
#   }
# }

# resource "aws_subnet" "demo_private-2" {
#   vpc_id            = aws_vpc.demo.id
#   cidr_block        = "10.0.4.0/24"
#   availability_zone = "us-east-1b"
#   tags = {
#     Name = "DataTier_priv_sub"
#   }
# }

# # Creating route tables for IGW
# resource "aws_route_table" "pub_RTB" {
#   vpc_id = aws_vpc.demo.id
#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.myIGW.id
#   }
#   tags = {
#     Name = "pub_RTB"
#   }
# }

# # Creating Route Associations
# resource "aws_route_table_association" "demo_public-1" {
#   subnet_id      = aws_subnet.demo_public-1.id
#   route_table_id = aws_route_table.pub_RTB.id
# }
# resource "aws_route_table_association" "demo_public-2" {
#   subnet_id      = aws_subnet.demo_public-2.id
#   route_table_id = aws_route_table.pub_RTB.id
# }
# //
