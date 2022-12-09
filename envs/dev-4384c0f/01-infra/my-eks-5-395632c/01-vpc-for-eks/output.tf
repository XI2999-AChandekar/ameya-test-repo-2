

output "vpc_id" {
	description = "The ID of the VPC"
	value       = module.vpc_for_eks.vpc_id
}

output "vpc_arn" {
	description = "The ARN of the VPC"
	value       = module.vpc_for_eks.vpc_arn
}

output "vpc_cidr_block" {
	description = "The CIDR block of the VPC"
	value       = module.vpc_for_eks.vpc_cidr_block
}

output "default_security_group_id" {
	description = "The ID of the security group created by default on VPC creation"
	value       = module.vpc_for_eks.default_security_group_id
}

output "default_network_acl_id" {
	description = "The ID of the default network ACL"
	value       = module.vpc_for_eks.default_network_acl_id
}

output "vpc_instance_tenancy" {
	description = "Tenancy of instances spin up within VPC"
	value       = module.vpc_for_eks.vpc_instance_tenancy
}

output "vpc_public_route_table" {
	description = "Tenancy of instances spin up within VPC"
	value       = module.vpc_for_eks.vpc_public_route_table
}

output "private_subnets" {
	description = "List of IDs of private subnets"
	value       = module.vpc_for_eks.private_subnets
}

output "private_subnet_arns" {
	description = "List of ARNs of private subnets"
	value       = module.vpc_for_eks.private_subnet_arns
}

output "private_subnets_cidr_blocks" {
	description = "List of cidr_blocks of private subnets"
	value       = module.vpc_for_eks.private_subnets_cidr_blocks
}

output "public_subnets" {
	description = "List of IDs of public subnets"
	value       = module.vpc_for_eks.public_subnets
}

output "public_subnet_arns" {
	description = "List of ARNs of public subnets"
	value       = module.vpc_for_eks.public_subnet_arns
}

output "public_subnets_cidr_blocks" {
	description = "List of cidr_blocks of public subnets"
	value       = module.vpc_for_eks.public_subnets_cidr_blocks
}

output "database_subnets" {
	description = "List of IDs of database subnets"
	value       = module.vpc_for_eks.database_subnets
}

output "database_subnet_arns" {
	description = "List of ARNs of database subnets"
	value       = module.vpc_for_eks.database_subnet_arns
}

output "database_subnets_cidr_blocks" {
	description = "List of cidr_blocks of database subnets"
	value       = module.vpc_for_eks.database_subnets_cidr_blocks
}

output "vpc_flow_log_id" {
	description = "The ID of the Flow Log resource"
	value       = module.vpc_for_eks.vpc_flow_log_id
}

output "vpc_flow_log_destination_arn" {
	description = "The ARN of the destination for VPC Flow Logs"
	value       = module.vpc_for_eks.vpc_flow_log_destination_arn
}

output "vpc_flow_log_destination_type" {
	description = "The type of the destination for VPC Flow Logs"
	value       = module.vpc_for_eks.vpc_flow_log_destination_type
}

output "azs" {
	description = "A list of availability zones specified as argument to this module"
	value       = module.vpc_for_eks.azs
}

output "name" {
	description = "The name of the VPC specified as argument to this module"
	value       = module.vpc_for_eks.name
}

output "igw_id" {
	description = "The ID of the Internet Gateway"
	value       = module.vpc_for_eks.igw_id
}

output "igw_arn" {
	description = "The ARN of the Internet Gateway"
	value       = module.vpc_for_eks.igw_arn
}

output "aws_vpc_peering_connection_id" {
	description = ""
	value       = module.vpc_for_eks.aws_vpc_peering_connection_id
}

output "aws_ec2_transit_gateway_vpc_attachment_id" {
	description = "The transit gateway attachment id"
	value       = module.vpc_for_eks.aws_ec2_transit_gateway_vpc_attachment_id
}

output "aws_route_tgw_route_id" {
	description = "Route entry id"
	value       = module.vpc_for_eks.aws_route_tgw_route_id
}

