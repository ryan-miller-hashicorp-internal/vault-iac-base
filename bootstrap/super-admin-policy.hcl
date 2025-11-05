# "super-admin" policy for Vault administrators managing Vault Enterprise
path "*" {
    capabilities = ["create", "read", "update", "patch", "delete", "list", "sudo"]
}
