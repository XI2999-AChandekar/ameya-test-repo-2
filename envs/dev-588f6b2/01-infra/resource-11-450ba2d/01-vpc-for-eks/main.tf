
terraform {
  required_version = ">= 0.13.1"
}

provider tls {
	version = "<4.0.0"
}

module "vpc_for_eks" {
  source = "../../../../../_terraform_modules/xebia/terraform-aws-xebia-vpc@v0.11.0"
	
  accepter_route_table_ids = var.accepter_route_table_ids
  accepter_vpc_id = var.accepter_vpc_id
  accepter_vpc_region = var.accepter_vpc_region
  appliance_mode_support = var.appliance_mode_support
  assume_role_arn = var.assume_role_arn
  auto_accept_peering = var.auto_accept_peering
  azs = var.azs
  cidr = var.cidr
  create_database_subnet_route_table = var.create_database_subnet_route_table
  create_endpoints = var.create_endpoints
  create_flow_log_cloudwatch_iam_role = var.create_flow_log_cloudwatch_iam_role
  create_flow_log_cloudwatch_log_group = var.create_flow_log_cloudwatch_log_group
  create_igw = var.create_igw
  create_public_route = var.create_public_route
  database_subnet_tags = var.database_subnet_tags
  database_subnets = var.database_subnets
  default_security_group_egress = var.default_security_group_egress
  default_security_group_ingress = var.default_security_group_ingress
  destination_cidr_block = var.destination_cidr_block
  dns_support = var.dns_support
  egress_rules_vpc_endpoints_sg = var.egress_rules_vpc_endpoints_sg
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_flow_log = var.enable_flow_log
  enable_nat_gateway = var.enable_nat_gateway
  enable_peering = var.enable_peering
  endpoints = var.endpoints
  extra_tags = var.extra_tags
  flow_log_max_aggregation_interval = var.flow_log_max_aggregation_interval
  ingress_rules_vpc_endpoints_sg = var.ingress_rules_vpc_endpoints_sg
  ipv6_support = var.ipv6_support
  manage_default_security_group = var.manage_default_security_group
  name = var.name
  one_nat_gateway_per_az = var.one_nat_gateway_per_az
  peer_mode = var.peer_mode
  private_subnet_tags = var.private_subnet_tags
  private_subnets = var.private_subnets
  public_subnet_tags = var.public_subnet_tags
  public_subnets = var.public_subnets
  region = var.region
  security_group_ids = var.security_group_ids
  single_nat_gateway = var.single_nat_gateway
  subnet_ids = var.subnet_ids
  tags = var.tags
  tgwa_tags = var.tgwa_tags
  transit_gateway_default_route_table_association = var.transit_gateway_default_route_table_association
  transit_gateway_default_route_table_propagation = var.transit_gateway_default_route_table_propagation
  transit_gateway_id = var.transit_gateway_id
  vpc_endpoints_sg_name = var.vpc_endpoints_sg_name
  vpc_peering_connection_id = var.vpc_peering_connection_id
  vpc_tags = var.vpc_tags
}
