output "db_username" {
  description = "The database Username from SSM"
  value = data.aws_ssm_parameter.db_username
  sensitive = true
}

output "db_password" {
  description = "The database Pass from SSM"
  value = data.aws_ssm_parameter.db_password
  sensitive = true
}

output "db_instance_id" {
  description = "The Id of the RDS DB instance"
  value = aws_db_instance.my_db.id
}

output "db_instance_endpoint" {
  description = "The endpoint of the RDS DB instance"
  value = aws_db_instance.my_db.endpoint
}