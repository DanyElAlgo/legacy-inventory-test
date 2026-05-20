output "public_ip" {
  description = "IP pública de la instancia EC2"
  value       = aws_instance.app.public_ip
}
