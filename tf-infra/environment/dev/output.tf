## VPC ID
output "vpc_id" {
  value = module.networking.vpc_id
}

## Publics subnets
output "public_subnets" {
  value = module.networking.public_subnets
}


## Private subnets
output "private_subnets" {
  value = module.networking.private_subnets
}

## DNS and Elastic IP
/*

output "vpc_dns" {
  description = "DNS del VPC"
  value       = aws_vpc.main.default_network_acl_id
}

output "nat_gateway_eip" {
  description = "Elastic IP del NAT Gateway"
  value       = aws_eip.nat.public_ip
}
*/