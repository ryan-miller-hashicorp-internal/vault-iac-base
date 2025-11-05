#!/bin/bash
#
# Bootstrap Vault cluster for JWT dynamic authentication from HCP Terraform.
#

set -e

echo "Enabling JWT auth in Vault Enterprise"
vault auth enable jwt

echo "Configuring JWT connections from HCP Terraform"
vault write auth/jwt/config \
    oidc_discovery_url="https://app.terraform.io"\
    bound_issuer="https://app.terraform.io"

echo "Creating 'super-admin' policy"
vault policy write super-admin-policy super-admin-policy.hcl

echo "Creating 'super-admin' role"
vault write auth/jwt/role/super-admin-role @super-admin-role.json

echo "Dynamic authentication from HCP Terraform -> Vault Enterprise configured!"
