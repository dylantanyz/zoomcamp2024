variable "credentials" {
  description = "Path to Credentials"
  default     = "./keys/gcp-keys.json"
}

variable "project" {
  description = "Project ID"
  default     = "de2024-dylan"
}

variable "location" {
  description = "Project Location"
  default     = "asia-southeast1"
}

variable "bq_dataset_name" {
  description = "My BigQuery Dataset Name"
  default     = "de2024_dylan_dataset"
}

variable "gcs_bucket_name" {
  description = "My Storage Bucket Name"
  default     = "de2024-dylan-bucket"
}

variable "gcs_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}