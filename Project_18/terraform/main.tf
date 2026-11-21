resource "local_file" "gitops_demo" {
  filename = "${path.module}/deployment.txt"

  content = <<EOT
GitOps Deployment Successful
Triggered by GitHub Actions
EOT
}
