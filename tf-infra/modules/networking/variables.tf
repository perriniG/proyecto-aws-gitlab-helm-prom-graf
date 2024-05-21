## Networking CIDR 

variable "vpc_cidr_block" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

## Vpc name
variable "vpc_name" {
  description = "Vpc name"
  type        = string
}

## Public subnets
variable "public_subnets" {
  description = "Public Subnets"
  type        = list(string)
}

## Private Subnet
variable "private_subnets" {
  description = "Private Subnets"
  type        = list(string)
}

## Availability Zones
variable "availability_zone" {
  description = "AZ"
  type        = list(string)
  default     = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
}
