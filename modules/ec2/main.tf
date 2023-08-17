# Using Data Source to get all Avalablility Zones in Region
data "aws_availability_zones" "available_zones" {}

# Fetching Ubuntu 20.04 AMI ID
data "aws_ami" "amazon_linux_2" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
}

# Creating RDS Instance
resource "aws_db_subnet_group" "default" {
  subnet_ids = [var.private_subnet_1, var.private_subnet_2]
    
  tags = {
    Name = "My DB subnet group"
  }
}

# DB instance
resource "aws_db_instance" "default" {
  allocated_storage      = 10
  db_subnet_group_name   = aws_db_subnet_group.default.id
  engine                 = "mysql"
  engine_version         = "8.0.20"
  instance_class         = "db.t2.micro"
  multi_az               = true
  name                   = "mydb"
  username               = "username"
  password               = "password"
  skip_final_snapshot    = true
  vpc_security_group_ids = var.db_security_group
}

# Creating 1st EC2 instance in Public Subnet
resource "aws_instance" "demoinstance" {
  ami                         = data.aws_ami.amazon_linux_2.id
  instance_type               = var.instance_type
  count                       = 1
  vpc_security_group_ids      = var.web_security_group
  subnet_id                   = var.public_subnet_1
  associate_public_ip_address = true

  tags = {
    Name = "My Public Instance"
  }
}

# Creating 2nd EC2 instance in Public Subnet
resource "aws_instance" "demoinstance1" {
  ami                         = data.aws_ami.amazon_linux_2.id
  instance_type               = var.instance_type
  count                       = 1
  vpc_security_group_ids      = var.web_security_group
  subnet_id                   = var.public_subnet_2
  associate_public_ip_address = true
  tags = {
    Name = "My Public Instance 2"
  }
}
