############## CALL TO MODULES ################

module "postgresql" {
     source            = "./modules/postgresql"
     project           = "${var.project}"
     env               = "${var.env}"
}

