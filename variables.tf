variable "oci_tenancy_ocid" {}
variable "oci_user_ocid" {}
variable "oci_private_key_path" {}
variable "oci_ssh_authorized_key" {}
variable "oci_finger_print" {}

variable "compartment_id" {
  type = string
}

variable "bucket_namespace" {
  type = string

}

variable "oci_location" {
  type    = string
  default = "us-ashburn-1"

}