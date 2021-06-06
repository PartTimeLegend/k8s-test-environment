resource "helm_release" "nginix_ingress" {
  name       = "ingress-nginx"
  repository = "https://kubernetes.github.io/ingress-nginx/"
  chart      = "ingress-nginx"
  namespace  = "antony-test"
  depends_on = [
    kubernetes_namespace.test-namespace
  ]
}