variable "region" {
  description = "AWS EU-west-1 region"
  type        = string
}

variable "cluster_name" {
  description = "Cluster name"
  type        = string
}

variable "subnet_ids" {
  description = "Subnets ID"
  type        = list(string)
}

variable "security_group_ids" {
  description = "Node group name"
}

variable "node_desired_size" {
  description = "Node size desired"
  type        = number
}

variable "node_min_size" {
  description = "Minimum node size"
  type        = number
}


variable "node_max_size" {
  description = "Max node size"
  type        = number
}

variable "node_group_name" {
  description = "Node group description"
  type        = string
}

variable "ec2_ssh_key" {
  description = "SSH key to access to the db bastion"
  type        = string
}
