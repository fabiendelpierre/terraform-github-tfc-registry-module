resource "github_repository" "blank" {
  count = (var.github_repo_use_template == true ? 0 : 1)

  name        = var.github_repo_name
  description = var.github_repo_description
  visibility  = var.github_repo_visibility

  has_issues   = var.github_repo_enable_issues
  has_projects = var.github_repo_enable_projects
  has_wiki     = var.github_repo_enable_wiki

  gitignore_template = var.github_repo_gitignore_template
  license_template   = var.github_repo_license_template
}

# output "azure_msdn_subscription_repo" {
#   value = github_repository.azure_msdn_subscription
# }

resource "github_repository" "templated" {
  count = (var.github_repo_use_template == true ? 1 : 0)

  name        = var.github_repo_name
  description = var.github_repo_description
  visibility  = var.github_repo_visibility

  template {
    owner      = var.github_repo_template_owner_name
    repository = var.github_repo_template_repo_name
  }
}

# data "tfe_oauth_client" "main" {
#   oauth_client_id = var.oauth_client_id
# }

resource "tfe_registry_module" "blank" {
  count = (var.github_repo_use_template == true ? 0 : 1)

  # depends_on = [github_repository.blank]

  vcs_repo {
    display_identifier = github_repository.blank[0].full_name
    identifier         = github_repository.blank[0].full_name
    oauth_token_id     = var.oauth_token_id
  }
}

resource "tfe_registry_module" "templated" {
  count = (var.github_repo_use_template == true ? 1 : 0)

  # depends_on = [github_repository.templated]

  vcs_repo {
    display_identifier = github_repository.templated[0].full_name
    identifier         = github_repository.templated[0].full_name
    oauth_token_id     = var.oauth_token_id
  }
}