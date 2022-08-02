
variable "region" {
    type = string
    default = "us-east-2"  
}


variable "availability_zones" {
  description = "A list of availability zones to create subnets in"
  type        = list(string)
  default = [ "us-east-2c" ]
}


variable "tags" {
  description = "A map of tags to assign to resources"
  type        = map(string)
  default     = {}
}

variable "tags_for_resource" {
  description = "A nested map of tags to assign to specific resource types"
  type        = map(map(string))
  default     = {}
}

# VPC variables

variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default = "192.168.0.0/16"
}

variable "enable_dns_support" {
  description = "Enable DNS support in the VPC"
  type        = string
  default     = true
}

variable "enable_dns_hostnames" {
  description = "Enable DNS hostnames in the VPC"
  type        = string
  default     = false
}




# Public subnet variables

variable "cidr_block" {
  description = "The larger CIDR block to use for calculating individual public subnet CIDR blocks"
  type        = string
}

variable "subnet_count" {
  description = "The number of public subnets to create"
  type        = string
}



variable "map_public_ip_on_launch" {
  description = "Assign a public IP address to instances launched into the public subnets"
  type        = string
  default     = false
}






