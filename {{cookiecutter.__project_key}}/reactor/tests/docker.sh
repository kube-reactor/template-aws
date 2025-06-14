#===================
# Docker execution
#===================
#
# Search path
#
# test_{environment}_{phase}
# test_{environment}
# test_{phase}
# test_all
#

function test_docker_images () {
  function verify_core_images () {
    add_container_environment

    verify_docker_images \
      "registry.k8s.io/etcd" \
      "registry.k8s.io/pause" \
      "registry.k8s.io/coredns/coredns" \
      "registry.k8s.io/kube-proxy" \
      "registry.k8s.io/kube-apiserver" \
      "registry.k8s.io/kube-scheduler" \
      "registry.k8s.io/kube-controller-manager" \
      "registry.k8s.io/metrics-server/metrics-server" \
      "gcr.io/k8s-minikube/storage-provisioner" \
      "kubernetesui/metrics-scraper" \
      "kubernetesui/dashboard" \
      "bitnami/nginx-ingress-controller" \
      "bitnami/nginx" \
      "public.ecr.aws/docker/library/redis" \
      "ghcr.io/dexidp/dex" \
      "quay.io/argoproj/argocd" \
      "ghcr.io/stakater/reloader"
  }
  wait verify_core_images 30
}

function test_docker_services () {
  function verify_up_services () {
    add_container_environment
    verify_docker_up \
      "k8s_coredns_coredns" \
      "k8s_POD_coredns" \
      "k8s_etcd_etcd-[a-zA-Z0-9\-\_]+_kube-system" \
      "k8s_POD_etcd-[a-zA-Z0-9\-\_]+_kube-system" \
      "k8s_kube-proxy_kube-proxy" \
      "k8s_POD_kube-proxy" \
      "k8s_kube-apiserver_kube-apiserver-[a-zA-Z0-9\-\_]+_kube-system" \
      "k8s_POD_kube-apiserver-[a-zA-Z0-9\-\_]+_kube-system" \
      "k8s_kube-scheduler_kube-scheduler-[a-zA-Z0-9\-\_]+_kube-system" \
      "k8s_POD_kube-scheduler-[a-zA-Z0-9\-\_]+_kube-system" \
      "k8s_kube-controller-manager_kube-controller-manager-[a-zA-Z0-9\-\_]+_kube-system" \
      "k8s_POD_kube-controller-manager-[a-zA-Z0-9\-\_]+_kube-system" \
      "k8s_storage-provisioner_storage-provisioner_kube-system" \
      "k8s_POD_storage-provisioner_kube-system" \
      "k8s_metrics-server_metrics-server" \
      "k8s_POD_metrics-server" \
      "k8s_dashboard-metrics-scraper_dashboard-metrics-scraper" \
      "k8s_POD_dashboard-metrics-scraper" \
      "k8s_kubernetes-dashboard_kubernetes-dashboard" \
      "k8s_POD_kubernetes-dashboard" \
      "k8s_controller_nginx-nginx-ingress-controller" \
      "k8s_POD_nginx-nginx-ingress-controller" \
      "k8s_default-backend_nginx-nginx-ingress-controller-default-backend" \
      "k8s_POD_nginx-nginx-ingress-controller-default-backend" \
      "k8s_redis_argocd-redis" \
      "k8s_POD_argocd-redis" \
      "k8s_server_argocd-server" \
      "k8s_POD_argocd-server" \
      "k8s_dex-server_argocd-dex-server" \
      "k8s_POD_argocd-dex-server" \
      "k8s_repo-server_argocd-repo-server" \
      "k8s_POD_argocd-repo-server" \
      "k8s_application-controller_argocd-application-controller" \
      "k8s_POD_argocd-application-controller" \
      "k8s_applicationset-controller_argocd-applicationset-controller" \
      "k8s_POD_argocd-applicationset-controller" \
      "k8s_notifications-controller_argocd-notifications-controller" \
      "k8s_POD_argocd-notifications-controller" \
      "k8s_reloader-reloader_reloader-reloader" \
      "k8s_POD_reloader-reloader"
  }

  function verify_down_services () {
    add_container_environment
    verify_docker_exit \
      "k8s_prepare-nginx-folder_nginx-nginx-ingress-controller" \
      "k8s_copyutil_argocd-dex-server" \
      "k8s_copyutil_argocd-repo-server"
  }

  wait verify_up_services 120
  wait verify_down_services 120
}

function test_local_running () {
  tag system docker

  add_tag image
  run_test test_docker_images

  add_tag service
  run_test test_docker_services
}
