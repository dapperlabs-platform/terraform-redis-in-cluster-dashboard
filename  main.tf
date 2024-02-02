terraform {
  required_providers {
    grafana = {
      source  = "grafana/grafana"
      version = "~> 1.20"
    }
  }
}

resource "random_string" "redis_in_cluster" {
  length  = 12
  special = false
}

resource "grafana_dashboard" "redis_in_cluster" {
  folder    = var.folder_uid
  overwrite = var.overwrite_dashboard

  config_json = templatefile(
    "${path.module}/template/redis.json",
    {
      ENVIRONMENT_REPLACE = var.environment,
      PRODUCT_REPLACE     = var.product_name,
      PROJECT_REPLACE     = var.project_name,
      DS_PROMETHEUS       = var.prom_datasource_uid,
      SERVICE_REPLACE     = var.service_name,
      UID_REPLACE         = random_string.redis_in_cluster.result
    }
  )
}
