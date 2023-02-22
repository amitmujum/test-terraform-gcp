terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">=4.30.0"
    }
  }
  backend "gcs" {
    bucket      = "tf-state-np"
    prefix      = "env/non-prod"
    credentials = "/path-to-sa-cicd.json"
  }
}

provider "google" {
  credentials = var.credentials
  region      = var.region
  zone        = var.zone
  project     = var.project
}
