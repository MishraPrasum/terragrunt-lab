include "root" {
  path = find_in_parent_folders("root.hcl")
}

locals {
  env = read_terragrunt_config(
    find_in_parent_folders("env.hcl")
  ).locals
}

terraform {
  source = "../../../modules/ec2"
}

dependency "vpc" {
  config_path = "../vpc"
}

inputs = {
  environment      = local.env.environment
  instance_type    = local.env.instance_type
  key_name         = local.env.key_name
  ssh_allowed_cidr = local.env.ssh_allowed_cidr

  vpc_id    = dependency.vpc.outputs.vpc_id
  subnet_id = dependency.vpc.outputs.public_subnet_id
}