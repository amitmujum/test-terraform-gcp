terraform {
  	required_providers {
   	 google = {
      	     source  = "hashicorp/google"
     		 version = ">= 4.30.0"
    		 }
  		 }
}


resource "google_project_service" "run_api"{
    project =  var.project
    service =  "run.googleapis.com"
    disable_dependent_services = true
    disable_on_destroy  = false
  }

resource "google_cloud_run_service" "run_service" {
  name = "app"
  location = var.region

  template {
    spec {
      containers {
        image = var.image
      }
    }
  }

  traffic {
    percent         = var.traffic_percentage
    latest_revision = true
  }

  # Waits for the Cloud Run API to be enabled
  depends_on = [google_project_service.run_api]
}

resource "google_cloud_run_service_iam_member" "run_all_users" {
  service  = google_cloud_run_service.run_service.name
  location = google_cloud_run_service.run_service.location
  role     = "roles/run.invoker"
  member   = "allUsers"
}
