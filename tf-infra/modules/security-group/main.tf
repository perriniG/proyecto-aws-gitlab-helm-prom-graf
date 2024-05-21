resource "aws_security_group" "eks-sg" {
  name        = "eks-sg"
  description = "SG for EKS"

  ## HTTP
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks
  }
  ## HTTPS
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks
  }
  ##ssh
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks
  }
  ## Allowed EKS nodes traffic
  ingress {
    from_port       = 443
    to_port         = 443
    protocol        = "tcp"
    security_groups = [aws_eks_cluster.eks-test.cluster_security_group_id]
  }
  ## Helm and MySql traffic
  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks
  }
  ## Egress traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.cidr_blocks
  }
  egress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "-1"
    cidr_blocks = [aws_security_group.bastion_sg.id]
  }

}
## EC-2 Bastion to connecto to the DB
resource "aws_security_group" "bastion_sg" {
  name        = "bastion-sg"
  description = "Security Group for Bastion EC2 Instance"

}

