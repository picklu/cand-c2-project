# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
    region = "us-east-1"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "udacity" {
    count = 2
    ami = "ami-0323c3dd2da7fb37d"
    instance_type = "t2.small"
    
    tags = {
            Name  = "EC2-Udacity-Small-${count.index + 1}"
        }
}


# TODO: provision 2 m4.large EC2 instances named Udacity M4
