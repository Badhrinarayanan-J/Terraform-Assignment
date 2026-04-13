provider "aws" {
  region = "us-east-2"
}

# Security Group (Allow HTTP + SSH)
resource "aws_security_group" "web_sg" {
  name = "web-sg"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# EC2 Instance
resource "aws_instance" "web_server" {
  ami           = "ami-07062e2a343acc423"
  instance_type = "t2.micro"

  security_groups = [aws_security_group.web_sg.name]

  user_data = file("install_apache.sh")

  tags = {
    Name = "apache-server"
  }
}

# Output Public IP
output "public_ip" {
  value = aws_instance.web_server.public_ip
}
