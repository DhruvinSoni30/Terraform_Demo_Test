# Environment
variable "env" {
  type = string
}

# Type
variable "type" {
  type = string
}

# Stack name
variable "project_name" {
  type = string
}

# Vpc cidr
variable "vpc_cidr" {
  type    = string
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
