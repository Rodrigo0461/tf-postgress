##### MODULE POSTGRES #####

resource "google_sql_database_instance" "master" {
  name             = "${var.db_name["${var.env}"]}"
  database_version = "POSTGRES_11"
  region           = "us-central1"
  project          = "${var.project}"

  settings {
    # Second-generation instance tiers are based on the machine
    # type. See argument reference below.
    tier = "${var.tier["${var.env}"]}"
  }
}