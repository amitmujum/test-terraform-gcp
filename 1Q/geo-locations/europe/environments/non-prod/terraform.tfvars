project     = "Project-ID"
credentials = "/path-to-sa-cicd.json"
region      = "europe-north1"
zone        = "europe-north1-a"

vpc_name            = "webapplication-vpc-non-prod"
subnet_1            = "europe-north1-non-prod"
subnet_2            = "europe-west1-non-prod"
tier                = "BASIC"

compute_name = "eu-np"
machine_type = "e2-small"
image        = "debian-cloud/debian-11"

cloud_sql_name   = "cloudsql-europe-north1-non-prod"
database_version = "MYSQL_5_7"
db_tier          = "db-f1-micro"
