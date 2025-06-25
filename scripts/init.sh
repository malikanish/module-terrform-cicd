#!/bin/bash
set -e

echo "🔧 Initializing Terraform with S3 backend..."
cd env/dev

terraform init \
  -backend-config="bucket=anish-state-bucket-12345" \
  -backend-config="key=dev/terraform.tfstate" \
  -backend-config="region=us-east-1" \
  -reconfigure

echo "✅ Terraform initialized with S3 backend!"