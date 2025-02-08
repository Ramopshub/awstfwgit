provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "ec2" {
  ami           = "ami-04b4f1a9cf54c11d0"  # Replace with a valid AMI ID
  instance_type = "t2.micro"
  
  tags = {
    Name = "GitHub-Actions-EC2"
  }
}