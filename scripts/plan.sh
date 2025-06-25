#!/bin/bash
set -ex

echo "Creating Terraform plan..."
cd env/dev

terraform plan -var-file="dev.auto.tfvars" -out=tfplan

echo "Plan created!"