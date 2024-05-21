## EKS SG
output "eks_security_group_id" {
  description = "The ID of the EKS SG "
  value       = aws_security_group.eks-sg.id
}

## Bastion SG
output "bastion_sg_id" {
  description = "The ID of the EKS SG"
  value       = aws_security_group.bastion_sg.id
}

## EKS SG Ingress
output "eks_security_group_ingress_rules" {
  description = "The list of ingress of the EKS SG"
  value       = aws_security_group.eks-sg.ingress
}


## EKS SG Ingress
output "eks_security_group_egress_rules" {
  description = "The list of egress of the EKS SG"
  value       = aws_security_group.eks-sg.egress
}

## Bastion SG
output "bastion_sg_ingress_rules" {
  description = "The list of the ingress rules for the bastions SG"
  value       = aws_security_group.bastion_sg.ingress
}

## Bastion SG
output "bastion_sg_egress_rules" {
  description = "The list of the egress rules for the bastions SG"
  value       = aws_security_group.bastion_sg.egress
}