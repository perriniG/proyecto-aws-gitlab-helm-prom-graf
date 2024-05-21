## Region
variable "region" {
  description = "AWS region"
  default     = "eu-west-1"
}

## CIDR Block
variable "vpc_cidr_block" {
  description = "CIDR for vpc"
  type        = string
  default     = "10.0.0.0/16"
}

## VPC name
variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default     = "dev-vpc"
}

## Public
variable "public_subnets" {
  description = "List of public subnet CIDR Blocks"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

## Private
variable "private_subnets" {
  description = "List of public subnet CIDR Blocks"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "availability_zones" {
  description = "List of AZ"
  type        = list(string)
  default     = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]

}