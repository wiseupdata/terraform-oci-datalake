terraform {
  required_version = "~>1.4"
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "~>4"
    }
  }
}

provider "oci" {
  tenancy_ocid     = var.oci_tenancy_ocid
  user_ocid        = var.oci_user_ocid
  private_key_path = var.oci_private_key_path
  fingerprint      = var.oci_finger_print
  region           = var.oci_location
}
