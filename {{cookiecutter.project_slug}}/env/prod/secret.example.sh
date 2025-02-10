#
# AWS environment variables
#
export AWS_ACCESS_KEY_ID="{{ cookiecutter.aws_access_key }}"
export AWS_SECRET_ACCESS_KEY="{{ cookiecutter.aws_secret_key }}"

export AWS_STATE_KMS_KEY_ID=""
export AWS_ACCOUNT_ID=""

#
# ArgoCD environment variables
#
export ARGOCD_SERVER_SECRET="{long_secret_key}"
export ARGOCD_ADMIN_PASSWORD="{strong_password}"

#
# Grafana environment variables
#
export GRAFANA_ADMIN_PASSWORD="{strong_password}"

#
# Qdrant environment variables
#
export QDRANT_PASSWORD="{strong_password}"

#
# Cloudflare environment variables
#
export CLOUDFLARE_DOMAIN="{{ cookiecutter.domain }}"
export CLOUDFLARE_API_TOKEN="{{ cookiecutter.cloudflare_api_key }}"
