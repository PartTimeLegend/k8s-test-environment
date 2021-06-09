resource "helm_release" "nginix_ingress" {
  name       = "ingress-nginx"
  repository = "https://kubernetes.github.io/ingress-nginx/"
  chart      = "ingress-nginx"
  namespace  = kubernetes_namespace.test-namespace.metadata.0.name
  depends_on = [
    kubernetes_namespace.test-namespace
  ]
}
