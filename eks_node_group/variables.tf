locals {
  node_policy_arn = {
    "node_policy" = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
    "acr_policy"  = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
    "cni_policy"  = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
  }
}

variable "node_group_name1" {
  description = "Assign name for the Node Group1"
  type        = string
}

variable "node_group_name2" {
  description = "Assign name for the Node Group2"
  type        = string
}

variable "node_role_name" {
  description = "Role name for Node Group in eks cluster"
  type        = string
}

variable "nodegroup_keypair" {
  description = "Key pair name to attach for EC2 nodes in Node group"
  type        = string
}

variable "eks_cluster_name" {
  description = "Name of EKS Cluster, pulled from eks_cluster module"
  type        = string
}

variable "eks_subnet_ids" {
  description = "List subnet ids on which EKS Cluster to be launched"
  type        = list(string)
}

variable "eks_subnet_id_node_group1" {
  description = "List subnet ids on which EKS Cluster to be launched"
  type        = list(string)
}

variable "eks_subnet_id_node_group2" {
  description = "List subnet ids on which EKS Cluster to be launched"
  type        = list(string)
}

variable "instance_types" {
  description = "Instance types of EKS node group"
  type        = list
}

variable "capacity_type" {
  description = "Capacity type of EKS node group"
  type        = string
}

variable "desired_size" {
  description = "Desired size of EKS node group"
  type        = number
}

variable "max_size" {
  description = "Max size of EKS node group"
  type        = number
}

variable "min_size" {
  description = "Min size of EKS node group"
  type        = number
}