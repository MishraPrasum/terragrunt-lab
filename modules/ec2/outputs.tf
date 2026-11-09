output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.main.id
}

output "public_ip" {
  description = "Public IP address"
  value       = aws_instance.main.public_ip
}

output "public_dns" {
  description = "Public DNS name"
  value       = aws_instance.main.public_dns
}

output "security_group_id" {
  description = "EC2 security group ID"
  value       = aws_security_group.this.id
}
