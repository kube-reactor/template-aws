#
# Minikube environment configurations
#
# Minikube virtual CPUs available
export MINIKUBE_CPUS=2
# Minikube VM RAM available
export MINIKUBE_MEMORY=6144

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
# [template:argocd]: ArgoCD Terraform provisioner project stage wait time
export PROJECT_UPDATE_WAIT="{{cookiecutter.project_update_wait}}"

#
# Implementation Providers
#
# Reactor provisioner provider
export PROVISIONER_PROVIDER=terraform
# Reactor kubernetes provider
export KUBERNETES_PROVIDER=minikube
# Reactor DNS provider
export DNS_PROVIDER=host

#
# Grafana environment variables
#
# [template:grafana]: Grafana administrative user name
export GRAFANA_ADMIN_USER="{{cookiecutter.grafana_admin_user}}"
