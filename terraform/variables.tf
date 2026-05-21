variable "aws_region" {
  description = "Region de AWS donde se desplegara la infraestructura"
  type        = string
  default     = "us-east-1"
}

variable "app_port" {
  description = "Puerto en el que escucha la aplicacion"
  type        = number
  default     = 5000
}

variable "ami_id" {
  description = "ID del AMI de Amazon Linux 2023 para la region seleccionada"
  type        = string
  default     = "ami-0236922087fa98b6e"
}

variable "instance_type" {
  description = "Tipo de instancia EC2"
  type        = string
  default     = "t3.micro"
}

variable "iam_instance_profile_name" {
  description = "Nombre del IAM Instance Profile que se asignara a la instancia EC2"
  type        = string
  default     = "c214655a5423892l15199138t1w184526-LabEksClusterRole-EOnleqbo4gkZ"
}
