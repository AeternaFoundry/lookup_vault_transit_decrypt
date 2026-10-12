output "transit_decrypt_lookup_id" {
  description = "Map of id values across all transit_decrypt_lookup, keyed the same as var.transit_decrypt_lookup except keys with no id are omitted"
  value       = { for k, v in data.vault_transit_decrypt.transit_decrypt_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "transit_decrypt_lookup_backend" {
  description = "Map of backend values across all transit_decrypt_lookup, keyed the same as var.transit_decrypt_lookup except keys with no backend are omitted"
  value       = { for k, v in data.vault_transit_decrypt.transit_decrypt_lookup : k => v.backend if v.backend != null && length(v.backend) > 0 }
}
output "transit_decrypt_lookup_ciphertext" {
  description = "Map of ciphertext values across all transit_decrypt_lookup, keyed the same as var.transit_decrypt_lookup except keys with no ciphertext are omitted"
  value       = { for k, v in data.vault_transit_decrypt.transit_decrypt_lookup : k => v.ciphertext if v.ciphertext != null && length(v.ciphertext) > 0 }
}
output "transit_decrypt_lookup_context" {
  description = "Map of context values across all transit_decrypt_lookup, keyed the same as var.transit_decrypt_lookup except keys with no context are omitted"
  value       = { for k, v in data.vault_transit_decrypt.transit_decrypt_lookup : k => v.context if v.context != null && length(v.context) > 0 }
}
output "transit_decrypt_lookup_key" {
  description = "Map of key values across all transit_decrypt_lookup, keyed the same as var.transit_decrypt_lookup except keys with no key are omitted"
  value       = { for k, v in data.vault_transit_decrypt.transit_decrypt_lookup : k => v.key if v.key != null && length(v.key) > 0 }
}
output "transit_decrypt_lookup_namespace" {
  description = "Map of namespace values across all transit_decrypt_lookup, keyed the same as var.transit_decrypt_lookup except keys with no namespace are omitted"
  value       = { for k, v in data.vault_transit_decrypt.transit_decrypt_lookup : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "transit_decrypt_lookup_plaintext" {
  description = "Map of plaintext values across all transit_decrypt_lookup, keyed the same as var.transit_decrypt_lookup except keys with no plaintext are omitted"
  value       = { for k, v in data.vault_transit_decrypt.transit_decrypt_lookup : k => v.plaintext if v.plaintext != null && length(v.plaintext) > 0 }
  sensitive   = true
}

