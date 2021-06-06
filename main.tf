provider "kubernetes-alpha" {
  load_config_file = false
}

provider "helm" {
  kubernetes {
  }
}