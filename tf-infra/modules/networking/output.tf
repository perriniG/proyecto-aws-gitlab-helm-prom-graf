##  VPC-ID
output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}
## Public VPC
output "public_subnets" {
  description = "Public VPCs"
  value       = [for s in aws_subnet.public : s.id]
}

output "private_subnets" {
  description = "Privates Vpcs"
  value       = [for s in aws_subnet.private : s.id]
}

output "vpc_dns" {
  description = "DNS del VPC"
  value       = aws_vpc.main.default_network_acl_id
}

output "nat_gateway_eip" {
  description = "Elastic IP del NAT Gateway"
  value       = aws_eip.nat.public_ip
}
