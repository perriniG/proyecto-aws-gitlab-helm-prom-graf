variable "region" {
  description = "AWS region"
  type = string
}

variable "db_username_param_name" {
  description = "System Manager parameter store name for the db usename"
  type = string
  default = "db-username"
}

variable "db_password_param_name" {
  description = "SSM for the DB password"
  type = string
  default = "db-password"
}

variable "subnet_ids" {
  description = "A list of Subnets IDs for RDS instance"
  type = list(string)
  default = [ "" ]
}

variable "vpc_security_group_ids" {
  description = "A list of SG IDs for the RDS instances"
  type = list(string)
  default = [ "" ]
}

variable "storage_capacity" {
  description = "RDS Capacity"
  type = string
  default = "10G"

}

variable "instance_type" {
  description = "Instance type"
  type = string
  default = "db.t3.micro"
}

variable "db_name" {
  description = "RDS DB Name"
  type = string
  default = "mydatabase"
}

variable "parameter_group_name" {
  description = "RDS Parameter group"
  type = string
  default = "default.mysql18.0"
}
variable "db_engine" {
  description = "RDS DB Engine"
  type = string
  default = "mysql"

}