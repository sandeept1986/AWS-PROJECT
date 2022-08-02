output "vpc_id" {
  description = "The VPC ID"
  value       = module.vpc.vpc_id
}


# Public subnet outputs

output "subnet_count" {
  description = "The number of public subnets"
  value       = module.subnets.subnet_count
}

output "subnet_ids" {
  description = "List of public subnet IDs"
  value       = module.subnets.subnet_ids
}



# Private subnet outputs





