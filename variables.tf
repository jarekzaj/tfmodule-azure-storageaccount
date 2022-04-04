locals {
  standard_storage_kinds = ["StorageV2", "Storage", "BlobStorage"]
  account_kind = contains(local.standard_storage_kinds, var.storage_kind) ? "Standard" : "Premium"
}

variable "name" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "access_tier" {
  type = string
}

variable "replication_type" {
  type = string
}

variable "storage_kind" {
  type = string
  default = "StorageV2"
}


variable "tags" {
}