#
# AWS environment variables
#
# Root AWS account ID
export AWS_ACCOUNT_ID=""

# AWS Terraform state access key ID
export AWS_STATE_ACCESS_KEY_ID=""
# AWS Terraform state secret access key
export AWS_STATE_SECRET_ACCESS_KEY=""

# AWS access key ID
export AWS_ACCESS_KEY_ID=""
# AWS secret access key
export AWS_SECRET_ACCESS_KEY=""

# AWS provisioner state KMS key ID
export AWS_STATE_KMS_KEY_ID=""

#
# ArgoCD environment variables
#
# Production ArgoCD server secret
export ARGOCD_SERVER_SECRET="999999999"
# Development ArgoCD administrator password
export ARGOCD_ADMIN_PASSWORD="999999999"

#
# Grafana environment variables
#
# Production Grafana administrator password
export GRAFANA_ADMIN_PASSWORD="999999999"

#
# Cert-Manager
#
# [template:contacts]: Certificate issuer support email
export ISSUER_EMAIL="{{cookiecutter.issuer_email}}"

#
# Cloudflare environment variables
#
# [template:domain]: Production Cloudflare domain
export CLOUDFLARE_DOMAIN="{{cookiecutter.cloudflare_domain}}"
# Production Cloudflare API token
export CLOUDFLARE_API_TOKEN=""
