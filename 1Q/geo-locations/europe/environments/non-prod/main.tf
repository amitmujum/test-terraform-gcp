
module "data" {
  source              = "../../../../modules/data"
  tier                = var.tier
  project             = var.project
  vpc_name            = var.vpc_name
  versioning          = false
  cloud_sql_name      = var.cloud_sql_name
  database_version    = var.database_version
  db_tier             = var.db_tier
  enable_apis         = true
}

module "compute_engine" {
  source = "../../../../modules/applications-vm"

  compute_name            = var.compute_name
  machine_type            = var.machine_type
  zone                    = var.zone
  image                   = var.image
  vpc                     = var.vpc_name
  subnet                  = var.subnet_1
  region                  = var.region
  project                 = var.project
}

module "api_cloudrun" {
  source              = "../../../../modules/app_cloudrun"
  project             = var.project
}
