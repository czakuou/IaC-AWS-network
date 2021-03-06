module "networking" {
  source    = "./modules/networking"
  namespace = var.namespace
}

module "autoscaling" {
  source      = "./modules/autoscaling"
  namespace   = var.namespace
  ssh_keypair = var.ssh_keypair

  vpc = module.networking.vpc
  sg  = module.networking.sg
}
