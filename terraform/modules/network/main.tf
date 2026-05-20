resource "aws_security_group" "app_sg" {
  name        = "legacy-inventory-sg"
  description = "Permite tráfico entrante en el puerto de la aplicación"

  ingress {
    description = "Tráfico entrante en el puerto de la aplicación"
    from_port   = var.app_port
    to_port     = var.app_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Todo el tráfico saliente permitido"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "legacy-inventory-sg"
  }
}
