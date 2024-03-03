provider "aws" {
  region = "us-east-1"  # Change this to your desired AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-0440d3b780d96b29d"  # Amazon Linux 2 AMI, change to your preferred AMI
  instance_type = "t2.micro"               # Change to your desired instance type

  tags = {
    Name = "example-instance"
  }
}