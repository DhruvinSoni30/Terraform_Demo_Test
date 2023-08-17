# VPC ID
output "vpc_id" {
  value = aws_vpc.demo_vpc.id
}

# ID of subnet in AZ1 
output "public_subnet_az1_id" {
  value = aws_subnet.public_subnet_az1.id
}

# ID of subnet in AZ2
output "public_subnet_az2_id" {
  value = aws_subnet.public_subnet_az2.id
}

# Internet Gateway ID
output "internet_gateway" {
  value = aws_internet_gateway.demo_internet_gateway.id
}

# ID of subnet in AZ1 
output "private_subnet_az1_id" {
  value = aws_subnet.database-subnet-1.id
}

# ID of subnet in AZ2
output "private_subnet_az2_id" {
  value = aws_subnet.database-subnet-2.id
}