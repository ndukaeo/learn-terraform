variable "vault_token" {}


data "vault_generic_secret" "rundeck_auth" {
  path = "kv/test"
}

provider "vault" {
  address = "https://vault-internal.banecio-devops.online:8200"
  token = var.vault_token
  skip_tls_verify = true
}

resource "local_file" "foo" {
  content  = data.vault_generic_secret.rundeck_auth.data["MYPASS"]
  filename = "/tmp/foo.bar"
}

# output "test" {
#   value = data.vault_generic_secret.rundeck_auth.data["MYPASS"]
# }
# due to sensitivity of data, this won't print the sensitive value
