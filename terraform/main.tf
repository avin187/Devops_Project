provider "aws" {
  region = "eu-north-1"  # Update with your desired AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-0014ce3e52359afbd"
  instance_type = "t3.micro"

  tags = {
    Name = "example-instance"
  }
}
