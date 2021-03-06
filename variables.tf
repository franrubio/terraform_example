variable "region" {
  default = "us-central1"
}

variable "region_zone" {
  default = "us-central1-f"
}

variable "project_name" {
  description = "ID of the Google Cloud project"
}

variable "credentials_file_path" {
  default     = "account.json"
}

variable "public_key_path" {
  default     = "gcloud_id_rsa.pub"
}

variable "private_key_path" {
  default     = "gcloud_id_rsa"
}

variable "install_script_src_path" {
  description = "Path to install script within this repository"
  default     = "scripts/install.sh"
}

variable "install_script_dest_path" {
  description = "Path to put the install script on each destination resource"
  default     = "/tmp/install.sh"
}