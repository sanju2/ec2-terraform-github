output "instance_id" {
  description = "Id of the EC2"
  value       = aws_instance.app_server.id
}

output "instance_public_ip" {
  description = "Public ip of EC2"
  value       = aws_instance.app_server.public_ip
}