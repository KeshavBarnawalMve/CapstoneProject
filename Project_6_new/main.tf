resource "local_file" "infrastructure" {
  filename = "${path.module}/infrastructure.txt"
  content  = "Terraform infrastructure updated and tracked in Git"
}
