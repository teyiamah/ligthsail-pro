# Output the public IP of the instance
output "instance_public_ip" {
  value = aws_lightsail_instance.docker_server.public_ip_address
}

# Output the private key (for SSH access - be careful with this in production)
output "private_key" {
  value     = aws_lightsail_key_pair.lg_key_pair.private_key
  sensitive = true
}