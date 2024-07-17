variable "domain_name" {
  default = "banecio-devops.online"
}


variable "components" {
  default = {
    frontend = {
      instance_type = "t3.micro"
    }
    mongo = {
      instance_type = "t3.small"
    }
    catalogue = {
      instance_type = "t3.micro"
    }
  }
}

