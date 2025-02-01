resource "helm_release" "kestra" {
  name             = "kestra"
  chart            = "kestra"
  repository       = "https://helm.kestra.io/"
  namespace        = "kestra"
  create_namespace = true
  wait             = true
  timeout          = 600

  set {
    name  = "deployments.webserver.enabled"
    value = "true"
  }

  set {
    name  = "deployments.executor.enabled"
    value = "true"
  }

  set {
    name  = "deployments.indexer.enabled"
    value = "true"
  }

  set {
    name  = "deployments.scheduler.enabled"
    value = "true"
  }

  set {
    name  = "deployments.worker.enabled"
    value = "true"
  }

  set {
    name  = "deployments.standalone.enabled"
    value = "true"
  }
  depends_on = [helm_release.ingress_nginx]
}
