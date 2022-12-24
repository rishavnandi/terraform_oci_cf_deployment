variable "zone_id" { type = string }
variable "record_name" { type = string }

resource "cloudflare_record" "tf_compute" {
  zone_id = var.zone_id
  name    = var.record_name
  type    = "A"
  value   = oci_core_instance.tf_compute.public_ip
  proxied = true
}
