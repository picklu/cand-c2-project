# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
    region  = "us-east-1"
    profile = "udacity" 
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity T2" {
    count = 4
    ami = "ami-0323c3dd2da7fb37d"
    instance_type = "t2.micro"
    
    tags = {
            Name  = "EC2-Udacity-t2_micro-${count.index + 1}"
        }
}


# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "Udacity M4" {
    count = 2
    ami = "ami-0323c3dd2da7fb37d"
    instance_type = "m4.large"
    
    tags = {
            Name  = "EC2-Udacity-m4_large-${count.index + 1}"
        }
}
