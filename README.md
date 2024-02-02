# Redis In Cluster Grafana Dashboard

A Grafana Dashboard for our In-Cluster Redis nodes for non-production environments.

`make` updates the `README.md` file based on Terraform changes.

## Requires

1. `terraform` [Download](https://www.terraform.io/downloads.html) [Brew](https://formulae.brew.sh/formula/terraform)
2. `terraform-docs` to update the README. [Download](https://github.com/terraform-docs/terraform-docs) [Brew](https://formulae.brew.sh/formula/terraform-docs)
3. Optional: `make` to update the README. [Download](https://www.gnu.org/software/make/)

## Usage

```terraform
module "redis_in_cluster_grafana_dashboard" {
  source               = "github.com/dapperlabs-platform/terraform-redis-in-cluster-dashboard?ref=main"
  folder_uid           = "folder-uid-goes-here"
  prom_datasource_uid  = "datasource-id-goes-here"
  product_name         = "Product That Is Awesome"
  project_name         = "product-staging"
  environment          = "staging"
  service_name         = "product-infrastructure"
}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_grafana"></a> [grafana](#requirement\_grafana) | ~> 1.20 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_grafana"></a> [grafana](#provider\_grafana) | ~> 1.20 |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [grafana_dashboard.redis_in_cluster](https://registry.terraform.io/providers/grafana/grafana/latest/docs/resources/dashboard) | resource |
| [random_string.redis_in_cluster](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | Environment | `string` | n/a | yes |
| <a name="input_folder_uid"></a> [folder\_uid](#input\_folder\_uid) | Grafana Folder UID | `string` | n/a | yes |
| <a name="input_overwrite_dashboard"></a> [overwrite\_dashboard](#input\_overwrite\_dashboard) | Always overwrite from Terraform | `bool` | `true` | no |
| <a name="input_product_name"></a> [product\_name](#input\_product\_name) | Product Name | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Project Name | `string` | n/a | yes |
| <a name="input_prom_datasource_uid"></a> [prom\_datasource\_uid](#input\_prom\_datasource\_uid) | Prometheus Datasource UID | `string` | n/a | yes |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | Service Name | `string` | n/a | yes |

## Outputs

No outputs.
