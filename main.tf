resource "aws_instance" "ec2-instance1" {
  ami           = "ami-0341d95f75f311023"
  instance_type = "t2.micro"

  tags = {
    Name = "demo-server1"
  }
}

resource "aws_instance" "ec2-instance2" {
  provider      = aws.west
  ami           = "ami-0d902a8756c37e690" #AMI for us-west-1
  instance_type = "t2.micro"

  tags = {
    Name = "demo-server2"
  }
}
