#
#=========================================================================================
# Initialization
#
export __longhorn_volume_dir="${__cache_dir}/longhorn"

export HOST_IP="$(hostname -I | cut -d' ' -f1)"
export ARGOCD_DOMAIN="apps.${PRIMARY_DOMAIN}"
export KUBE_DASHBOARD_DOMAIN="kube.${PRIMARY_DOMAIN}"
export STORAGE_DOMAIN="storage.${PRIMARY_DOMAIN}"
