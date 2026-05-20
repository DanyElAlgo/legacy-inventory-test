variable "ami_id" {
  description = "ID del AMI de Amazon Linux 2023"
  type        = string
}

variable "instance_type" {
  description = "Tipo de instancia EC2"
  type        = string
}

variable "security_group_id" {
  description = "ID del Security Group a asociar a la instancia"
  type        = string
}

variable "iam_instance_profile_name" {
  description = "Nombre del IAM Instance Profile para la instancia EC2"
  type        = string
}

variable "app_port" {
  description = "Puerto de la aplicación (usado como referencia en user_data)"
  type        = number
}
