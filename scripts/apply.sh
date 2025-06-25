#!/bin/bash
set -e

echo "Applying Terraform..."
cd env/dev

terraform apply -auto-approve tfplan

echo "Apply completed!"