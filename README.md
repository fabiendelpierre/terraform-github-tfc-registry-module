# Name of the Terraform module

Short description of the module

## What this does

Lorem ipsum

## Inputs and outputs

<!--- BEGIN_TF_DOCS --->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_github"></a> [github](#requirement\_github) | >= 4.1.0 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | >= 0.26.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | 4.15.1 |
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.26.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_repository.blank](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_repository.templated](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [tfe_registry_module.blank](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/registry_module) | resource |
| [tfe_registry_module.templated](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/registry_module) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_github_repo_description"></a> [github\_repo\_description](#input\_github\_repo\_description) | A description for the GitHub repo | `string` | `""` | no |
| <a name="input_github_repo_enable_issues"></a> [github\_repo\_enable\_issues](#input\_github\_repo\_enable\_issues) | value | `bool` | `true` | no |
| <a name="input_github_repo_enable_projects"></a> [github\_repo\_enable\_projects](#input\_github\_repo\_enable\_projects) | value | `bool` | `false` | no |
| <a name="input_github_repo_enable_wiki"></a> [github\_repo\_enable\_wiki](#input\_github\_repo\_enable\_wiki) | value | `bool` | `false` | no |
| <a name="input_github_repo_gitignore_template"></a> [github\_repo\_gitignore\_template](#input\_github\_repo\_gitignore\_template) | A gitignore template to preinstall in the GitHub repo | `string` | `"Terraform"` | no |
| <a name="input_github_repo_license_template"></a> [github\_repo\_license\_template](#input\_github\_repo\_license\_template) | The license to apply to the GitHub repository | `string` | `"unlicense"` | no |
| <a name="input_github_repo_name"></a> [github\_repo\_name](#input\_github\_repo\_name) | The name of the GitHub repo | `string` | n/a | yes |
| <a name="input_github_repo_template_owner_name"></a> [github\_repo\_template\_owner\_name](#input\_github\_repo\_template\_owner\_name) | The owner organization of the template repo to use to create this repo | `string` | `""` | no |
| <a name="input_github_repo_template_repo_name"></a> [github\_repo\_template\_repo\_name](#input\_github\_repo\_template\_repo\_name) | The name of the template repo to use to create this repo | `string` | `""` | no |
| <a name="input_github_repo_use_template"></a> [github\_repo\_use\_template](#input\_github\_repo\_use\_template) | Use a template to create the GitHub repo | `bool` | `true` | no |
| <a name="input_github_repo_visibility"></a> [github\_repo\_visibility](#input\_github\_repo\_visibility) | The GitHub repo's visibility (public, private, or internal) | `string` | `"public"` | no |
| <a name="input_oauth_token_id"></a> [oauth\_token\_id](#input\_oauth\_token\_id) | The OAuth token ID of the VCS connection to use by the TFC module registry to retrieve the module from source control | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_github_repo_full_name"></a> [github\_repo\_full\_name](#output\_github\_repo\_full\_name) | n/a |
| <a name="output_github_templated_repo_full_name"></a> [github\_templated\_repo\_full\_name](#output\_github\_templated\_repo\_full\_name) | n/a |

<!--- END_TF_DOCS --->

## Code example

```hcl
terraform {
  ...
}

module "this_module" {
  source = "./"
  ...
}
```