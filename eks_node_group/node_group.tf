resource "aws_eks_node_group" "ubuntu_22_ngp" {
  cluster_name    = var.eks_cluster_name
  node_group_name = var.node_group_name

  remote_access {
    ec2_ssh_key = aws_key_pair.node_ssh_key.key_name
  }

  node_role_arn = aws_iam_role.node_role.arn
  subnet_ids    = var.eks_subnet_ids

  scaling_config {
    desired_size = var.desired_size
    max_size     = var.max_size
    min_size     = var.min_size
  }

  update_config {
    max_unavailable = 2
  }

  depends_on = [
    aws_iam_role.node_role,
    aws_iam_role_policy_attachment.node_policy_attach
  ]

  instance_types  = var.instance_types
  capacity_type  = var.capacity_type
}