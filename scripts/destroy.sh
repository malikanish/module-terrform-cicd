#!/bin/bash
set -ex

echo "Destroying infrastructure..."
cd env/dev
terraform refresh -var-file="dev.auto.tfvars"

terraform destroy -var-file="dev.auto.tfvars" -auto-approve

echo " Destroy completed!"