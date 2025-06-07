#
# AWS environment variables
#
# Production AWS provisioner state bucket name
export AWS_STATE_BUCKET_NAME="cellebris-platform-${APP_NAME}"

# [template:terraform]: AWS platform provisioner IAM user name
export AWS_PLATFORM_WRITE_USER="{{cookiecutter.aws_platform_write_user}}"
# [template:terraform]: AWS platform provisioner IAM user group
export AWS_PLATFORM_WRITE_GROUP="{{cookiecutter.aws_platform_write_group}}"
# [template:terraform]: AWS ECR image manager IAM user name
export AWS_CONTAINER_WRITE_USER="{{cookiecutter.aws_container_write_user}}"
# [template:terraform]: AWS ECR image manager IAM user group
export AWS_CONTAINER_WRITE_GROUP="{{cookiecutter.aws_container_write_group}}"
# [template:terraform]: AWS ECR image accessor IAM user name
export AWS_CONTAINER_READ_USER="{{cookiecutter.aws_container_read_user}}"
# [template:terraform]: AWS ECR image accessor IAM user group
export AWS_CONTAINER_READ_GROUP="{{cookiecutter.aws_container_read_group}}"

# [template:network]: AWS primary region
export AWS_PRIMARY_REGION="{{cookiecutter.aws_primary_region}}"
# [template:network]: AWS secondary region
export AWS_SECONDARY_REGION="{{cookiecutter.aws_secondary_region}}"
# AWS EKS region
export AWS_EKS_REGION="$AWS_PRIMARY_REGION"

# AWS EKS VPC network CIDR
export AWS_VPC_CIDR="10.10.0.0/16"
# AWS EKS VPC private subnet CIDRs
export AWS_VPC_PRIVATE_SUBNET_CIDRS='["10.10.1.0/24", "10.10.2.0/24", "10.10.3.0/24"]'
# AWS EKS VPC public subnet CIDRs
export AWS_VPC_PUBLIC_SUBNET_CIDRS='["10.10.4.0/24", "10.10.5.0/24", "10.10.6.0/24"]'

# [template.env:aws]: Production AWS EKS system node type
export AWS_SYSTEM_NODE_TYPE="{{cookiecutter.prod_aws_system_node_type}}"
# [template.env:aws]: Production AWS EKS system node minimum count
export AWS_SYSTEM_NODE_MIN_COUNT="{{cookiecutter.prod_aws_system_node_min_count}}"
# [template.env:aws]: Production AWS EKS system node maximum count
export AWS_SYSTEM_NODE_MAX_COUNT="{{cookiecutter.prod_aws_system_node_max_count}}"

# [template.env:aws]: Production AWS EKS data node type
export AWS_DATA_NODE_TYPE="{{cookiecutter.prod_aws_data_node_type}}"
# [template.env:aws]: Production AWS EKS data node count
export AWS_DATA_NODE_COUNT="{{cookiecutter.prod_aws_data_node_count}}"
# [template.env:aws]: Production AWS EKS data node volume type
export AWS_DATA_NODE_VOLUME_TYPE="{{cookiecutter.prod_aws_data_node_volume_type}}"
# [template.env:aws]: Production AWS EKS data node volume size (per node)
export AWS_DATA_NODE_VOLUME_SIZE="{{cookiecutter.prod_aws_data_node_volume_size}}"
# [template.env:aws]: Production AWS EKS data node volume IOPS
export AWS_DATA_NODE_VOLUME_IOPS="{{cookiecutter.prod_aws_data_node_volume_iops}}"
# [template.env:aws]: Production AWS EKS data node volume throughput
export AWS_DATA_NODE_VOLUME_THROUGHPUT="{{cookiecutter.prod_aws_data_node_volume_throughput}}"
# [template.env:aws]: Production AWS EKS data node volume encryption enabled
export AWS_DATA_NODE_VOLUME_ENCRYPTED="{{cookiecutter.prod_aws_data_node_volume_encrypted}}"

# [template.env:aws]: Production AWS EKS storage node type
export AWS_STORAGE_NODE_TYPE="{{cookiecutter.prod_aws_storage_node_type}}"
# [template.env:aws]: Production AWS EKS storage node count
export AWS_STORAGE_NODE_COUNT="{{cookiecutter.prod_aws_storage_node_count}}"
# [template.env:aws]: Production AWS EKS storage node volume type
export AWS_STORAGE_NODE_VOLUME_TYPE="{{cookiecutter.prod_aws_storage_node_volume_type}}"
# [template.env:aws]: Production AWS EKS storage node volume size (per node)
export AWS_STORAGE_NODE_VOLUME_SIZE="{{cookiecutter.prod_aws_storage_node_volume_size}}"
# [template.env:aws]: Production AWS EKS storage node volume IOPS
export AWS_STORAGE_NODE_VOLUME_IOPS="{{cookiecutter.prod_aws_storage_node_volume_iops}}"
# [template.env:aws]: Production AWS EKS storage node volume throughput
export AWS_STORAGE_NODE_VOLUME_THROUGHPUT="{{cookiecutter.prod_aws_storage_node_volume_throughput}}"
# [template.env:aws]: Production AWS EKS storage node volume encryption enabled
export AWS_STORAGE_NODE_VOLUME_ENCRYPTED="{{cookiecutter.prod_aws_storage_node_volume_encrypted}}"

# [template.env:aws]: Production AWS EKS operations node type
export AWS_OPS_NODE_TYPE="{{cookiecutter.prod_aws_ops_node_type}}"
# [template.env:aws]: Production AWS EKS operations node minimum count
export AWS_OPS_NODE_MIN_COUNT="{{cookiecutter.prod_aws_ops_node_min_count}}"
# [template.env:aws]: Production AWS EKS operations node maximum count
export AWS_OPS_NODE_MAX_COUNT="{{cookiecutter.prod_aws_ops_node_max_count}}"

# [template.env:aws]: Production AWS EKS applications node type
export AWS_APP_NODE_TYPE="{{cookiecutter.prod_aws_app_node_type}}"
# [template.env:aws]: Production AWS EKS applications node minimum count
export AWS_APP_NODE_MIN_COUNT="{{cookiecutter.prod_aws_app_node_min_count}}"
# [template.env:aws]: Production AWS EKS applications node maximum count
export AWS_APP_NODE_MAX_COUNT="{{cookiecutter.prod_aws_app_node_max_count}}"

# AWS ECR application image repositories
export AWS_ECR_REPOSITORIES="{
  \"test-app\": {
    \"ro_accounts\": [],
    \"rw_accounts\": [],
    \"tags\": {}
  }
}"

#
# ArgoCD environment configurations
#
# ArgoCD project provisioning sequence
export ARGOCD_PROJECT_SEQUENCE='[
  "system",
  "platform",
  "database",
  "management"
]'

#
# Implementation Providers
#
# Reactor provisioner provider
export PROVISIONER_PROVIDER=terraform
# Reactor provisioner state provider
export STATE_PROVIDER=aws_s3
# Reactor kubernetes provider
export KUBERNETES_PROVIDER=aws_eks
# Reactor DNS provider
export DNS_PROVIDER=cloudflare

#
# Grafana environment variables
#
# [template:grafana]: Grafana administrative user name
export GRAFANA_ADMIN_USER="{{cookiecutter.grafana_admin_user}}"
