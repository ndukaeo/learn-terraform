variable "instance_type" {
  default = "t3.small"
}

variable "domain_name" {
  default = "banecio-devops.online"
}

variable "components" {
  default = ["frontend", "mongo", "catalogue"]
}