#
# ArgoCD environment variables
#
# Development ArgoCD server secret
export ARGOCD_SERVER_SECRET="999999999"
# Development ArgoCD administrator password
export ARGOCD_ADMIN_PASSWORD="999999999"

#
# Grafana environment variables
#
# Development Grafana administrator password
export GRAFANA_ADMIN_PASSWORD="999999999"

#
# Cert-Manager
#
# [template:contacts]: Certificate issuer support email
export ISSUER_EMAIL="{{cookiecutter.issuer_email}}"
