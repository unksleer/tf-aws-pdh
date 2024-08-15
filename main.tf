# Add Modules Here:

module "iam" {
  source = "./modules/iam"
}

module "cloudtrail" {
  source = "./modules/cloudtrail/"
}

module "network" {
  source = "./modules/network/"
}