variable "folder_uid" {
  description = "Grafana Folder UID"
  type        = string
}

variable "prom_datasource_uid" {
  description = "Prometheus Datasource UID"
  type        = string
}

variable "environment" {
  description = "Environment"
  type        = string
}

variable "project_name" {
  description = "Project Name"
  type        = string
}

variable "product_name" {
  description = "Product Name"
  type        = string
}

variable "service_name" {
  description = "Service Name"
  type        = string
}

variable "overwrite_dashboard" {
  description = "Always overwrite from Terraform"
  type        = bool
  default     = true
}
