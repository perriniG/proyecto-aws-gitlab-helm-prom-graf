provider "aws" {
  region = var.region
}

data "aws_ssm_parameter" "db_username" {
  name = var.db_username_param_name
  with_decryption = true
}

data "aws_ssm_parameter" "db_password" {
  name = var.db_password_param_name
  with_decryption = true
}

resource "aws_db_subnet_group" "my_db_subnet_group" {
  name = "my-db-subnet-group"
  subnet_ids = var.subnet_ids

  tags ={
    Name = "My DB subnets groups"
  }
}

resource "aws_db_instance" "my_db" {
  allocated_storage = var.storage_capacity
  engine = var.db_engine
  instance_class = "db.t3.micro"
  db_name = var.db_name
  username = data.aws_ssm_parameter.db_username.value
  password = data.aws_ssm_parameter.db_password
  parameter_group_name = var.parameter_group_name
  skip_final_snapshot = true

  vpc_security_group_ids = var.vpc_security_group_ids
  db_subnet_group_name = aws_db_subnet_group.my_db_subnet_group.name

  tags = {
    Name = "${var.db_name}"
    Engine = "${var.db_engine}"
    EngineVersion = "${var.parameter_group_name}"
  }
  depends_on = [ aws_db_subnet_group.my_db_subnet_group ]

}
