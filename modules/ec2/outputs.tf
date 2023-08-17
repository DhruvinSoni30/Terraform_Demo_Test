output "aws_db_instance_id" {
  value = aws_db_instance.default.id
}

output "web_instance_1_id" {
  value = aws_instance.demoinstance.id
}

output "web_instance_2_id" {
  value = aws_instance.demoinstance1.id
}