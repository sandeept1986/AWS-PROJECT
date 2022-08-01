terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.0"
    }
  }
}

provider "aws" {

    region = var.region
  
}

module "vpc" {
   source = "./VPC"  

}

module "subnet" {
   source = "./SUBNET"
   vpc_id = module.vpc.vpc_id
}

