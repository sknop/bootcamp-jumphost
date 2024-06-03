resource "aws_instance" "jumphost" {
  ami               = data.aws_ami.ubuntu.id
  instance_type     = var.jumphost-instance-type
  key_name          = aws_key_pair.bootcamp-key.key_name

  root_block_device {
    volume_size = 50
  }

  subnet_id = var.subnet_id
  vpc_security_group_ids = [var.all_bootcamp_sg, aws_security_group.external-access.id]
  associate_public_ip_address = true

  tags = {
    Name        = var.jumphost-name
    description = "Jumphost for Bootcamp - Managed by Terraform"
    Owner_Name  = var.owner_name
    Owner_Email = var.owner_email
    sshUser     = "ubuntu"
    region      = var.region
  }
}
