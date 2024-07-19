resource "aws_instance" "test" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-058ad30c15d8e84f4"]
  tags = {
    Name = "test"
  }
}
