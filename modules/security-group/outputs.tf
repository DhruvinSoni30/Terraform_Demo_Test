# Web Security Group ID
output "web_security_group_id" {
  value = aws_security_group.demo_sg.id
}

# Database Security Group ID
output "db_security_group_id" {
  value = aws_security_group.database-sg.id
}
