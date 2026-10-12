data "vault_transit_decrypt" "transit_decrypt_lookup" {
  for_each = var.transit_decrypt_lookup

  backend    = each.value.backend
  ciphertext = each.value.ciphertext
  key        = each.value.key
  context    = each.value.context
  namespace  = each.value.namespace
}

