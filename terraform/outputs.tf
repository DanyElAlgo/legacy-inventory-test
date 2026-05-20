output "instance_public_ip" {
  description = "IP pública de la instancia EC2 creada"
  value       = module.compute.public_ip
}
