terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "~> 4.102.0"
    }

    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3.30.0"
    }
  }
}

variable "tenancy_ocid" { type = string }
variable "user_ocid" { type = string }
variable "private_key_path" { type = string }
variable "fingerprint" { type = string }
variable "region" { type = string }
variable "root_compartment_id" { type = string }
variable "cloudflare_email" { type = string }
variable "cloudflare_api_key" { type = string }

provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  private_key_path = var.private_key_path
  fingerprint      = var.fingerprint
  region           = var.region
}

provider "cloudflare" {
  email   = var.cloudflare_email
  api_key = var.cloudflare_api_key
}
