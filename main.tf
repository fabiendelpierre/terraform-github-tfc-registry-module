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

resource "tfe_registry_module" "blank" {
  count = (var.github_repo_use_template == true ? 0 : 1)

  vcs_repo {
    display_identifier = github_repository.blank[0].full_name
    identifier         = github_repository.blank[0].full_name
    oauth_token_id     = var.oauth_token_id
  }
}

resource "tfe_registry_module" "templated" {
  count = (var.github_repo_use_template == true ? 1 : 0)

  vcs_repo {
    display_identifier = github_repository.templated[0].full_name
    identifier         = github_repository.templated[0].full_name
    oauth_token_id     = var.oauth_token_id
  }
}