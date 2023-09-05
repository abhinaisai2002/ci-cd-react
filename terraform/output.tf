output "ec2_public_ip" {
  description = "The public ip of the ec2"
  value       = aws_instance.web.public_ip
}
  