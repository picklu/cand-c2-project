terraform {

    backend "s3" {
        bucket = "udacity-s3-bucket"
        key = "terraform.tfstate"
        region = "us-east-1"
    }
}