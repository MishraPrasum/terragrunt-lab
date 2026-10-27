locals {
  environment        = "prod"
  vpc_cidr           = "10.30.0.0/16"
  public_subnet_cidr = "10.30.1.0/24"
  availability_zone  = "ap-south-1a"

  # Example production size; review the cost before applying.
  instance_type = "t3.small"
  key_name      = "pathnex-ec2-key"

  ssh_allowed_cidr = "203.0.113.10/32"
}