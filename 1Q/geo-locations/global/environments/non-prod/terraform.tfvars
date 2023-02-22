project     = "project id"
credentials = "/path-to-sa-cicd.json"
vpc_name    = "webapplication-vpc-non-prod"

subnets = {
  europe-north1-non-prod = {
    region        = "europe-north1"
    ip_cidr_range = "10.30.0.0/28"
    }, 
  europe-west1-non-prod = {
    region        = "europe-west1"
    ip_cidr_range = "10.40.0.0/28"
  }
}

firewalls = {
  allow-http-non-prod = {
    protocol      = "tcp"
    ports         = ["80"]
    target_tags   = ["http-server"]
    source_ranges = ["0.0.0.0/0"]
  },
  allow-https-non-prod = {
    protocol      = "tcp"
    ports         = ["443"]
    target_tags   = ["https-server"]
    source_ranges = ["0.0.0.0/0"]
  },
  allow-ssh-non-prod = {
    protocol      = "tcp"
    ports         = ["22"]
    target_tags   = ["ssh"]
    source_ranges = ["0.0.0.0/0"]
  }
}
