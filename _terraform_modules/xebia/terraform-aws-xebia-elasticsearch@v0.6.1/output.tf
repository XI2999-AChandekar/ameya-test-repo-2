output "arn" {
  description = "Amazon Resource Name (ARN) of the domain"
  value       = module.elasticsearch_domain.arn
}

output "domain_id" {
  description = "Unique identifier for the domain"
  value       = module.elasticsearch_domain.domain_id
}

output "endpoint" {
  description = "Domain-specific endpoint used to submit index, search, and data upload requests"
  value       = module.elasticsearch_domain.endpoint
}

output "kibana_endpoint" {
  description = "Domain-specific endpoint for kibana without https scheme"
  value       = module.elasticsearch_domain.kibana_endpoint
}

output "master_username" {
  description = "Master username"
  value       = module.elasticsearch_domain.master_username
}

output "master_password" {
  description = "Master password"
  value       = module.elasticsearch_domain.master_password
  sensitive   = true
}

output "vpc_options_availability_zones" {
  description = "If the domain was created inside a VPC, the names of the availability zones the configured subnet_ids were created inside"
  value       = module.elasticsearch_domain.vpc_options_availability_zones
}

output "vpc_options_vpc_id" {
  description = "If the domain was created inside a VPC, the ID of the VPC"
  value       = module.elasticsearch_domain.vpc_options_vpc_id
}
