resource "aws_eks_node_group" "node_group_1" {
  cluster_name    = var.eks_cluster_name
  node_group_name = var.node_group_name1

  remote_access {
    ec2_ssh_key = aws_key_pair.node_ssh_key.key_name
  }

  node_role_arn = aws_iam_role.node_role.arn
  subnet_ids    = var.eks_subnet_id_node_group1

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



resource "aws_eks_node_group" "node_group_2" {
  cluster_name    = var.eks_cluster_name
  node_group_name = var.node_group_name2

  remote_access {
    ec2_ssh_key = aws_key_pair.node_ssh_key.key_name
  }

  node_role_arn = aws_iam_role.node_role.arn
  subnet_ids    = var.eks_subnet_id_node_group2

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