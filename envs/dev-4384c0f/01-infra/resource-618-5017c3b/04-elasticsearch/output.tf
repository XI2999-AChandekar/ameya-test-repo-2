

output "arn" {
	description = "Amazon Resource Name (ARN) of the domain"
	value       = module.elasticsearch.arn
	sensitive    = false
}

output "domain_id" {
	description = "Unique identifier for the domain"
	value       = module.elasticsearch.domain_id
	sensitive    = false
}

output "endpoint" {
	description = "Domain-specific endpoint used to submit index, search, and data upload requests"
	value       = module.elasticsearch.endpoint
	sensitive    = false
}

output "kibana_endpoint" {
	description = "Domain-specific endpoint for kibana without https scheme"
	value       = module.elasticsearch.kibana_endpoint
	sensitive    = false
}

output "master_username" {
	description = "Master username"
	value       = module.elasticsearch.master_username
	sensitive    = false
}

output "master_password" {
	description = "Master password"
	value       = module.elasticsearch.master_password
	sensitive    = true
}

output "vpc_options_availability_zones" {
	description = "If the domain was created inside a VPC, the names of the availability zones the configured subnet_ids were created inside"
	value       = module.elasticsearch.vpc_options_availability_zones
	sensitive    = false
}

output "vpc_options_vpc_id" {
	description = "If the domain was created inside a VPC, the ID of the VPC"
	value       = module.elasticsearch.vpc_options_vpc_id
	sensitive    = false
}

