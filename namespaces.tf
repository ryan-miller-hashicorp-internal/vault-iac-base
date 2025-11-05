#=========================
# Create parent namespace
#=========================

resource "vault_namespace" "this" {
  path = "tenant"
}


#==========================
# Create tenant namespaces
#==========================

module "namespace-aa0001" {
  source  = "app.terraform.io/ryan-miller-hashicorp-internal/vault-namespace/ryanmillerc"
  version = "0.0.2"

  name = "aa0001"
}

module "namespace-aa0002" {
  source  = "app.terraform.io/ryan-miller-hashicorp-internal/vault-namespace/ryanmillerc"
  version = "0.0.2"

  name = "aa0002"
}
