# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  profile = "udacity"
  region  = "us-east-1"
}

resource "aws_vpc" "default-vpc" {

  cidr_block = "172.31.0.0/16"

  tags = {
    Name = "udacity-vpc"
  }
}


resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.default-vpc.id
  cidr_block              = "172.31.32.0/20"
  map_public_ip_on_launch = true
}
resource "aws_subnet" "public_subnet2" {
  vpc_id                  = aws_vpc.default-vpc.id
  cidr_block              = "172.31.16.0/20"
  map_public_ip_on_launch = true
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "UdacityT2" {
  count         = 4
  ami           = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet.id

  tags = {
    Name = "Udacity T2_${count.index + 1}"
  }
}


# TODO: provision 2 m4.large EC2 instances named Udacity M4
# resource "aws_instance" "UdacityM4" {
#   count         = 2
#   ami           = "ami-0323c3dd2da7fb37d"
#   instance_type = "m4.large"
#   subnet_id     = aws_subnet.public_subnet2.id

#   tags = {
#     Name = "Udacity M4_${count.index + 1}"
#   }
# }
