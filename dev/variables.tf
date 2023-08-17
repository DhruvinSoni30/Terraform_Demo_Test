variable "private_subnet_1" {
    type = string
}

variable "private_subnet_2" {
    type = string
}

variable "db_security_group" {
    type = string
}

variable "instance_type" {
    type = string
}

variable "web_security_group" {
    type = string
}

variable "public_subnet_1" {
    type = string
}

variable "public_subnet_2" {
    type = string
}

# VPC ID
variable "vpc_id" {
  type = string
}

# Environment
variable "env" {
  type = string
}

# Type
variable "type" {
  type = string
}

# CIDR of public subet in az1 
variable "public_subnet_az1_cidr" {
  type    = string
}

# CIDR of public subet in az2
variable "public_subnet_az2_cidr" {
  type    = string
}

# CIDR of public subet in az1 
variable "private_subnet_az1_cidr" {
  type    = string
}

# CIDR of public subet in az2
variable "private_subnet_az2_cidr" {
  type    = string
}

# Vpc cidr
variable "vpc_cidr" {
  type    = string
}
