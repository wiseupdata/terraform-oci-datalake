terraform {
  required_version = "~>1.4"
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "~>4"
    }
  }
}
