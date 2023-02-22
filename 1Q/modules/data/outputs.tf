
output "google_sql_database_name" {
    value = google_sql_database_instance.instance.name
}

output "google_sql_database_id" {
    value = google_sql_database_instance.instance.id
}

output "google_sql_database_private_ip" {
    value = google_sql_database_instance.instance.private_ip_address
}

output "google_sql_database_private_connection" {
    value = google_sql_database_instance.instance.connection_name
}
