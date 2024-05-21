variable "region" {
  description = "AWS region"
  type = string
}
variable "lb_name" {
  description = "Load Balancer name"
  type = string
  default = "my_lb"
}
variable "target_group_name" {
  description = "The name of the targe group"
  type = string
}

variable "vpc_id" {
  description = "VPC ID"
  type = string
}

variable "security_groups_ids" {
  description = "A list of the SG IDs"
  type = list(string)
}

variable "subnets_ids" {
  description = "A list of the subnets IDs"
  type = list(string)
}