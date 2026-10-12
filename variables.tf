variable "transit_decrypt_lookup" {
  description = <<EOT
Map of transit_decrypt_lookup, attributes below
Required:
    - backend
    - ciphertext
    - key
Optional:
    - context
    - namespace
EOT

  type = map(object({
    backend    = string
    ciphertext = string
    key        = string
    context    = optional(string)
    namespace  = optional(string)
  }))
}

