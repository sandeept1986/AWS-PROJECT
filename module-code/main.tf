provider "aws"{
  region = var.region
}
module "vpc" {
  source = "./vpc"

  cidr_block           = var.vpc_cidr_block
  enable_dns_support   = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames

  tags              = var.tags
  tags_for_resource = var.tags_for_resource
}

module "subnets" {
  source = "./subnets"

  vpc_id                  = module.vpc.vpc_id
  map_public_ip_on_launch = var.map_public_ip_on_launch
  cidr_block         = var.cidr_block
  subnet_count       = var.subnet_count
  availability_zones = var.availability_zones

  tags              = var.tags
  tags_for_resource = var.tags_for_resource
}
