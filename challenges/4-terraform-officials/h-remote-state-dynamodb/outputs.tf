output "instance_id" {
  description = "ID of the created EC2 instance"
  value       = aws_instance.example.id
}

output "instance_private_ip" {
  description = "Private IP address of the created EC2 instance"
  value       = aws_instance.example.private_ip
}

# Add more outputs as needed
