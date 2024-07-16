resource "aws_instance" "frontend" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-058ad30c15d8e84f4"]
  tags = {
    Name = "frontend-dev"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z0153757236UOMMSDCGKR"
  name    = "frontend.dev.banecio-devops.online"
  type    = "A"
  ttl     = 15
  records = [aws_instance.frontend.private_ip]
}



resource "aws_instance" "mongo" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-058ad30c15d8e84f4"]
  tags = {
    Name = "mongo-dev"
  }
}

resource "aws_instance" "catalogue" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-058ad30c15d8e84f4"]
  tags = {
    Name = "catalogue-dev"
  }
}
