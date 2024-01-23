terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.13.0"
    }
  }
}

provider "google" {
  project = "de2024-dylan"
  region  = "asia-southeast1"
}

resource "google_storage_bucket" "demo-bucket" {
  name          = "de2024-dylan-bucket"
  location      = "ASIA-SOUTHEAST1"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}