           module "vpc" {
  source = "./modules/vpc"
  name = var.name
  vpc_cidr = var.vpc_cidr
  env = var.env
  az_list = var.az_list
  private_subnet_list = var.private_subnet_list
  public_subnet_list = var.public_subnet_list
  enable_nat_gateway = var.enable_nat_gateway
}

module "ec2" {
  source = "./modules/ec2"
  instance_type = var.instance_type
  env = var.env
}

module "s3" {
  source = "./modules/s3"
  bucket = var.bucket
  env    = var.env
}