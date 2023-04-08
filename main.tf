resource "oci_identity_compartment" "this" {

  # Only create the resource group if no compartment id is specified by the user
  count = var.compartment_id != "auto-create" ? 0 : 1

  compartment_id = var.tenancy_id
  description    = "Compartment for the resources"
  name           = local.compartment_name

  freeform_tags = local.basic_tags
}

resource "oci_objectstorage_bucket" "this" {

  count          = length(local.names)
  compartment_id = var.compartment_id != "auto-create" ? var.compartment_id : oci_identity_compartment.this[0].id
  name           = local.names[count.index]
  namespace      = var.bucket_namespace

  freeform_tags = local.basic_tags
}

resource "oci_objectstorage_object" "this" {
  for_each  = { for entry in local.bucket_layers : "${entry.bucket}.${entry.layer}" => entry }
  bucket    = each.value.bucket
  object    = "${each.value.layer}/"
  namespace = var.bucket_namespace
}
