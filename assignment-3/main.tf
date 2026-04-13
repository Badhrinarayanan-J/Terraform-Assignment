# Default provider (Ohio)
provider "aws" {
  region = "us-east-2"
}

# Virginia provider
provider "aws" {
  alias  = "virginia"
  region = "us-east-1"
}

# EC2 - Ohio
resource "aws_instance" "ohio_instance" {
  ami           = "ami-07062e2a343acc423"
  instance_type = "t2.micro"

  tags = {
    Name = "hello-ohio"
  }
}

# EC2 - Virginia
resource "aws_instance" "virginia_instance" {
  provider      = aws.virginia
  ami           = "ami-0ec10929233384c7f"
  instance_type = "t2.micro"

  tags = {
    Name = "hello-virginia"
  }
}
