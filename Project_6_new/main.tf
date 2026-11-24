resource "local_file" "infrastructure" {
  filename = "${path.module}/infrastructure.txt"
  content  = "Version controlled infrastructure created via Terraform"
}
