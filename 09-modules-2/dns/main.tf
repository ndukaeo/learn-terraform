resource "aws_route53_record" "test" {
  zone_id = "Z0153757236UOMMSDCGKR"
  name    = "test.banecio-devops.online"
  type    = "A"
  ttl     = 15
  records = [var.private_ip]
}

variable "private_ip" {}

