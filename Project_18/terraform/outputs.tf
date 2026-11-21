output "deployment_status" {
  description = "Status of GitOps deployment"
  value       = "Terraform Apply Successful"
}

output "deployed_file" {
  description = "File created by Terraform"
  value       = local_file.gitops_demo.filename
}
