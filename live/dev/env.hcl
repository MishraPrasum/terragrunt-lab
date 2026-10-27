locals {
  environment       = "dev"
  vpc_cidr          = "10.10.0.0/16"
  public_subnet_cidr = "10.10.1.0/24"
  availability_zone = "ap-south-1a"

  instance_type = "t3.micro"

  # Must match the key pair name registered in AWS.
  # This is not necessarily the local PEM filename.
  key_name = "pathnex-ec2-key"

  # Replace with your current public IPv4 address followed by /32.
  ssh_allowed_cidr = "203.0.113.10/32"
}