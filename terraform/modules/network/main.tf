resource "aws_security_group" "app_sg" {
  name        = "legacy-inventory-sg"
  description = "Permite trafico entrante en el puerto de la aplicacion"

  ingress {
    description = "Trafico entrante en el puerto de la aplicacion"
    from_port   = var.app_port
    to_port     = var.app_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Todo el trafico saliente permitido"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "legacy-inventory-sg"
  }
}
