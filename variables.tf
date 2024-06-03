variable "region" {
  type = string
}

variable "my-ip" {
  description = "IP Address from which to get access to the public subnet in CIDR format (usually /32)"
  type = string
  default = ""
}

variable "jumphost-instance-type" {
  description = "AWS instance type used for jumphost instance"
  default = "t3.micro"
}

variable "external-security-group-name" {
  type = string
  default = "external-sg"
}

variable "bootcamp-key-name" {
  default = "bootcamp-key"
  description = "Name of key in AWS"
  type = string
}

variable "jumphost-name" {
  type = string
  default = "jumphost"
}

variable "owner_email" {
  type = string
}

variable "owner_name" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "all_bootcamp_sg" {
  type = string
}
