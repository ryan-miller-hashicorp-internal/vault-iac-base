#=========================
# Create parent namespace
#=========================

resource "vault_namespace" "this" {
  path = "tenant"
}


#==========================
# Create tenant namespaces
#==========================

module "vault-namespace" {
  source  = "app.terraform.io/ryan-miller-hashicorp-internal/vault-namespace/ryanmillerc"
  version = "0.0.1"

  name = "aa0001"
}
