#!/bin/bash
#
# Remove JWT auth, policy, and role. This should only be used for testing.
#

echo "Deleting 'super-admin-role'"
vault delete auth/jwt/role/super-admin-role

echo "Deleting 'super-admin-policy'"
vault policy delete super-admin-policy

echo "Disabling JWT auth"
vault auth disable jwt

echo "Dynamic authentication from HCP Terraform -> Vault Enterprise uninstalled!"
