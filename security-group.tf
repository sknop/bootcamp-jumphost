resource "aws_security_group" "external-access" {
  name = var.external-security-group-name
  description = "Allows free traffic from a specific IP"
  vpc_id = var.vpc_id

  ingress {
    description = "Allow all access from a specific host"
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [local.my_ip]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Bootcamp External Access"
    owner_email = var.owner_email
    owner_name = var.owner_name
  }
}
