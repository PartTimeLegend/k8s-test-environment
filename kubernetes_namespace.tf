resource "kubernetes_namespace" "test-namespace" {
  metadata {
    name = "antony-test"
  }
}