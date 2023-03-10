
output "google_sql_database_name" {
  value = module.data.google_sql_database_name
}

output "google_sql_database_id" {
  value = module.data.google_sql_database_id
}

output "google_sql_database_private_ip" {
  value = module.data.google_sql_database_private_ip
}

output "google_sql_database_private_connection" {
  value = module.data.google_sql_database_private_connection
}

output "compute_instance_name" {
  value = module.compute_engine.compute_instance_name
}

output "compute_instance_id" {
  value = module.compute_engine.compute_instance_id
}

output "compute_instance_hostname" {
  value = module.compute_engine.compute_instance_hostname
}
