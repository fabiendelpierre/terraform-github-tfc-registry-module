output "github_repo_full_name" {
  value = github_repository.blank.*.full_name
}

output "github_templated_repo_full_name" {
  value = github_repository.templated.*.full_name
}