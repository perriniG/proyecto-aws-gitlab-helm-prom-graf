## Outputs for EKS Cluster
output "eks_cluster_id" {
  description = "El ID del clúster EKS."
  value       = aws_eks_cluster.my_cluster.id
}

output "eks_cluster_endpoint" {
  description = "El endpoint del clúster EKS."
  value       = aws_eks_cluster.my_cluster.endpoint
}

output "eks_cluster_certificate_authority_data" {
  description = "La información del certificado de autoridad del clúster EKS."
  value       = aws_eks_cluster.my_cluster.certificate_authority[0].data
}

output "eks_cluster_security_group_id" {
  description = "El ID del grupo de seguridad del clúster EKS."
  value       = aws_eks_cluster.my_cluster.vpc_config[0].cluster_security_group_id
}

output "eks_cluster_version" {
  description = "La versión de Kubernetes del clúster EKS."
  value       = aws_eks_cluster.my_cluster.version
}

## Outputs for EKS Node Group
output "eks_node_group_arn" {
  description = "El ARN del grupo de nodos del clúster EKS."
  value       = aws_eks_node_group.my_node_group.arn
}

output "eks_node_group_id" {
  description = "El ID del grupo de nodos del clúster EKS."
  value       = aws_eks_node_group.my_node_group.id
}

output "eks_node_group_status" {
  description = "El estado del grupo de nodos del clúster EKS."
  value       = aws_eks_node_group.my_node_group.status
}

output "eks_node_group_instances" {
  description = "La lista de instancias del grupo de nodos del clúster EKS."
  value       = aws_eks_node_group.my_node_group.resources[0].autoscaling_groups[0].name
}

## Outputs for IAM Roles
output "eks_cluster_role_arn" {
  description = "El ARN del rol IAM del clúster EKS."
  value       = aws_iam_role.eks_cluster_role.arn
}

output "eks_node_role_arn" {
  description = "El ARN del rol IAM del grupo de nodos del clúster EKS."
  value       = aws_iam_role.eks_node_role.arn
}
