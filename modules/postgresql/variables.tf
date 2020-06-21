variable "region" {
  type        = string
  description = "The region of the Cloud SQL resources"
  default     = "us-central1"
}

variable "tier" {
  description = "The tier for the master instance."
  default     = {
    "qa"   ="db-f1-micro"
    "prod" ="db-n1-standard-1"
  }
}



### var db ####
variable "db_name" {
  description = "The name of the default database to create"
  default     = {
    "qa"   = "qa-instance"
    "prod" = "master-instance"
  }
}

variable "db_charset" {
  description = "The charset for the default database"
  type        = string
  default     = ""
}

variable "db_collation" {
  description = "The collation for the default database. Example: 'en_US.UTF8'"
  type        = string
  default     = ""
}


variable "project" {}

variable "env" {}
 