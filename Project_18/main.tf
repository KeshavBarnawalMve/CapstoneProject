terraform {
  required_version = ">= 1.5.0"
}
 
variable "release_version" {
  type    = string
  default = "v1.1.0"
}
 
resource "local_file" "gitops_deployment_manifest" {
  filename = "${path.module}/deployed-release.txt"
  content  = "GitOps Production Deployment Verified | Release: ${var.release_version}\n"
}
 
output "deployed_release" {
  value = var.release_version
}
