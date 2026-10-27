include "root" {
  path = find_in_parent_folders("root.hcl")
}

locals {
  env = read_terragrunt_config(
    find_in_parent_folders("env.hcl")
  ).locals
}

terraform {
  source = "../../../modules/vpc"
}

inputs = {
  environment        = local.env.environment
  vpc_cidr           = local.env.vpc_cidr
  public_subnet_cidr = local.env.public_subnet_cidr
  availability_zone  = local.env.availability_zone
}