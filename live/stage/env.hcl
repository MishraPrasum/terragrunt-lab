locals {
  environment        = "stage"
  vpc_cidr           = "10.20.0.0/16"
  public_subnet_cidr = "10.20.1.0/24"
  availability_zone  = "ap-south-1a"

  instance_type = "t3.micro"
  key_name      = "pathnex-ec2-key"

  ssh_allowed_cidr = "203.0.113.10/32"
}