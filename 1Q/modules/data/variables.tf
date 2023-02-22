
variable "tier" {
    default = "BASIC" 
}


variable "project" {
}

variable "region" {
  default = "us-west1"
}

variable "vpc_name" {
}


variable "versioning" {
    default = false
  
}

variable "cloud_sql_name" {
}

variable "database_version" {
}

variable "db_tier" { 
}

variable "enable_apis" {
  default = true
}
