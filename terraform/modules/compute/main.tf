resource "aws_instance" "app" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [var.security_group_id]
  iam_instance_profile   = var.iam_instance_profile_name

  user_data = <<-EOF
    #!/bin/bash
    set -e

    # Actualizar el sistema
    yum update -y
    yum install -y yum-utils
    yum install -y aws-cli

    yum install -y java-17-amazon-corretto
    yum install -y nodejs
    yum install -y python3 python3-pip

    # TODO: desplegar la aplicacion

    echo "Aplicacion iniciada en el puerto ${var.app_port}"
  EOF

  tags = {
    Name = "legacy-inventory-app"
  }
}
