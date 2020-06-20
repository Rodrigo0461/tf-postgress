############## CALL TO MODULES ################

module "postgresql" {
     source            = "./modules/postgresql"
     #project           = "${var.project}"
}

