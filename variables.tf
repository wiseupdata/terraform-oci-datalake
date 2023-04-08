variable "company_name" {
  description = "The name of the company."
  type        = string
  default     = "wiseupdata"
}

variable "app_name" {
  description = "The name of the application"
  type        = string
  default     = "dl"
}

variable "compartment_id" {
  description = "The OCID of the compartment where the resources will be created. You can find the compartment ID in the OCI Console by navigating to the compartment where you want to create the resources and copying the OCID from the compartment details page."
  type        = string
  default     = "auto-create"
}

variable "bucket_namespace" {
  description = "The namespace for the Oracle Cloud Infrastructure Object Storage service. You can find the namespace value in the Object Storage section of the OCI Console, under 'Details' for the desired bucket or namespace. The namespace is a globally unique string used to identify your Object Storage resources and is often the tenancy name followed by '_namespace' (e.g. 'my-tenancy_namespace')."
  type        = string
}

variable "oci_location" {
  description = "The region where you want to create your Oracle Cloud Infrastructure resources. This should be a valid Oracle Cloud Infrastructure region identifier (e.g. 'us-phoenix-1', 'eu-frankfurt-1'). If no value is provided, the default value of 'us-ashburn-1' will be used."
  type        = string
  default     = "us-ashburn-1"
}

variable "env" {
  description = "System environment."
  type        = string
  default     = "dev"
}

variable "default_tags" {
  description = "Default tags for all resources"
  type        = map(string)
  default = {
    "auto-create" = "true"
  }
}

variable "areas" {
  description = "Areas to created the workspaces, one per area"
  type        = list(string)
  default     = ["data", "sales"]
}

variable "layers" {
  description = "Layers for the datalake"
  type        = list(string)
  default     = ["strm", "raw", "trst", "agg", "tmp", "artifacts"] #strm streaming, trst trusted, agg agregated
}

variable "tenancy_id" {
  type = string

}

locals {

  basic_tags = {
    "managed_by" : "terraform",
    "app_name" : var.app_name,
    "env" : var.env,
    "company" : var.company_name
  }

  # compartment_name = var.compartment_id != "auto-create" ? var.compartment_id : "cp-${var.app_name}-${var.company_name}-${var.env}"
  compartment_name = "cp-${var.app_name}-${var.company_name}-${var.env}"

  # Default names for the datalake
  names = [for i in var.areas : "${var.app_name}-${var.company_name}-${i}-${var.env}"]

  bucket_layers = distinct(flatten([
    for bucket in oci_objectstorage_bucket.this : [
      for layer in var.layers : {
        bucket = bucket.name
        layer  = layer
      }
    ]
  ]))
}
