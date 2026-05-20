output "instance_public_ip" {
  description = "IP publica de la instancia EC2 creada"
  value       = module.compute.public_ip
}
