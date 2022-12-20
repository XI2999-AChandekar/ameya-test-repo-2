
terraform {
  required_version = ">= 0.13.1"
}

provider tls {
	version = "<4.0.0"
}

module "elasticsearch" {
  source = "../../../../../_terraform_modules/xebia/terraform-aws-xebia-elasticsearch@v0.6.1"
	
  assume_role_arn = var.assume_role_arn
  cloudwatch_log_enabled = var.cloudwatch_log_enabled
  cluster_config_instance_count = var.cluster_config_instance_count
  cluster_config_instance_type = var.cluster_config_instance_type
  cluster_config_warm_count = var.cluster_config_warm_count
  cluster_config_warm_enabled = var.cluster_config_warm_enabled
  cluster_config_warm_type = var.cluster_config_warm_type
  domain_endpoint_options_custom_endpoint_enabled = var.domain_endpoint_options_custom_endpoint_enabled
  domain_name = var.domain_name
  ebs_options_volume_size = var.ebs_options_volume_size
  elasticsearch_version = var.elasticsearch_version
  extra_tags = var.extra_tags
  log_publishing_options = var.log_publishing_options
  log_publishing_options_retention = var.log_publishing_options_retention
  region = var.region
  tags = var.tags
  vpc_options_security_group_ids = var.vpc_options_security_group_ids
  vpc_options_subnet_ids = var.vpc_options_subnet_ids
}
