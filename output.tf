output "jumphost-ip" {
  description = "The jumphost IP. Remember that the username is 'ubuntu'"
  value = aws_instance.jumphost.public_ip
}

output "external-vpc-security-group-id" {
  description = "Id of the security group for external access"
  value = aws_security_group.external-access.id
}

