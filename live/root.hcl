# Shared configuration for all environments
generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"

  contents = <<EOF
provider "aws" {
  region = "${get_env("AWS_REGION", "ap-south-1")}"
}
EOF
}