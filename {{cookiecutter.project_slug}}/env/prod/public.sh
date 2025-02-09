#
# AWS environment variables
#
export AWS_STATE_BUCKET_NAME="fractalsynapse-${APP_NAME}"

export AWS_TERRAFORM_USER="TerraformDeployer"

export AWS_PRIMARY_REGION="us-east-1"
export AWS_SECONDARY_REGION="us-west-1"
export AWS_EKS_REGION="$AWS_PRIMARY_REGION"

export AWS_VPC_CIDR="10.10.0.0/16"
export AWS_VPC_PRIVATE_SUBNET_CIDRS='["10.10.1.0/24", "10.10.2.0/24", "10.10.3.0/24"]'
export AWS_VPC_PUBLIC_SUBNET_CIDRS='["10.10.4.0/24", "10.10.5.0/24", "10.10.6.0/24"]'

export AWS_SYSTEM_NODE_TYPE="t3.xlarge"
export AWS_SYSTEM_NODE_MIN_COUNT="1"
export AWS_SYSTEM_NODE_MAX_COUNT="1"

export AWS_OPS_NODE_TYPE="t3.xlarge"
export AWS_OPS_NODE_MIN_COUNT="1"
export AWS_OPS_NODE_MAX_COUNT="1"

export AWS_APP_NODE_TYPE="t3.xlarge"
export AWS_APP_NODE_MIN_COUNT="1"
export AWS_APP_NODE_MAX_COUNT="1"

export AWS_ECR_REPOSITORIES="{
  \"test_app\": {
    \"ro_accounts\": [],
    \"rw_accounts\": [],
    \"tags\": {}
  }
}"

#
# Kubernetes environment configurations
#
export GATEWAY_NODE_PORT="32210"

#
# Subdomains
#
export OPERATIONS_SUBDOMAIN="ops"
export AUTH_SUBDOMAIN="auth"

#
# ArgoCD environment configurations
#
export ARGOCD_PROJECT_SEQUENCE='[
  "system",
  "platform",
  "database",
  "management"
]'

#
# Qdrant environment variables
#
export QDRANT_LOG_LEVEL="INFO"
export QDRANT_MAX_REQUEST_SIZE_MB="1000"

#
# Implementation Providers
#
export PROVISIONER_PROVIDER=terraform
export STATE_PROVIDER=aws_s3
export KUBERNETES_PROVIDER=aws_eks
export DNS_PROVIDER=cloudflare

#
# Cert-Manager
#
export ISSUER_EMAIL="erik@fractalsynapse.com"

#
# Grafana environment variables
#
export GRAFANA_ADMIN_USER="admin"
