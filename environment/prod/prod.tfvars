
# prod.tfvars (real-time companies style, logical order)

# Environment
env                 = "Prod"

# Cluster & Node Group
cluster_name        = "prod-eks-cluster"
node_group_name     = "prod-node-group"
instance_type       = "t3.medium"
desired_size        = 3
min_size            = 3
max_size            = 3

# AMI & User Data
ami_id              = "ami-0eb04f1ac6539e319"
user_data           = "IyEvYmluL2Jhc2gKL2V0Yy9la3MvYm9vdHN0cmFwLnNoIHByb2QtZWtzLWNsdXN0ZXIgLS1rdWJlbGV0LWV4dHJhLWFyZ3MgIi0tbm9kZS1sYWJlbHM9ZWtzLmFtYXpvbmF3cy5jb20vbm9kZWdyb3VwPXByb2Qtbm9kZS1ncm91cCI="

# KMS / Encryption
kms_key_arn         = "arn:aws:kms:ap-south-1:923884399206:key/4e8228fa-b9b2-472a-8333-bdf6dec516c1"

# Existing / Shared VPC Resources
subnet_ids          = ["subnet-0d122a84d3edb9ba1", "subnet-05e6fb6a379ad46b5"]
security_group_ids  = ["sg-00ee3067d865879f6"]

# IAM Role Names
eks_cluster_role_name = "prod-eks-cluster-role"
eks_nodes_ssm_role_name = "prod-eks-node-role"
