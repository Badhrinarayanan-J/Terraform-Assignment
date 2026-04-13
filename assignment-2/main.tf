provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-07062e2a343acc423"  # Ubuntu 24.04
  instance_type = "t2.micro"

  tags = {
    Name = "EC2-With-EIP"
  }
}

resource "aws_eip" "my_eip" {
  instance = aws_instance.my_ec2.id
}
