variable "domain_name" {
  default = "banecio-devops.online"
}


variable "components" {
  default = {
    frontend = {}
    mongo = {}
    catalogue = {}
    redis = {}
    rabbitmq = {}
    mysql = {}
    user = {}
    cart = {}
    shipping = {}
    payment = {}
    dispatch = {}
  }
}

