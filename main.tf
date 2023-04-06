resource "oci_objectstorage_bucket" "this" {
  compartment_id = var.compartment_id
  name           = "test_bucket_name"
  namespace      = var.bucket_namespace
}