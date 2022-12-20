region                                          = "ap-south-1"
domain_name                                     = "kotak"
elasticsearch_version                           = "7.10"
cluster_config_instance_type                    = "r5.large.elasticsearch"
cluster_config_instance_count                   = "1"
cluster_config_warm_enabled                     = "true"
cluster_config_warm_count                       = "2"
cluster_config_warm_type                        = "ultrawarm1.medium.elasticsearch"
extra_tags                                      = { "Owner" : "Xebia", "ManagedBy" : "Terraform", "Project" : "MB2.0" }
tags                                            = { "project_name" : "MB2-0", "environment_class" : "dev" }
ebs_options_volume_size                         = "50"
domain_endpoint_options_custom_endpoint_enabled = "false" # if true then need ARN and Endpoint to custom the endpoint
vpc_options_subnet_ids                          = ["subnet-0619f89812e4af967"]
vpc_options_security_group_ids                  = ["sg-001d6464c05aed245"]
log_publishing_options = {
  index_slow_logs = {
    cloudwatch_log_group_name = "es-index-slow"
    enabled                   = true
  }
  search_slow_logs = {
    cloudwatch_log_group_name = "es-search-slow"
    enabled                   = true
  }
  es_application_logs = {
    cloudwatch_log_group_name = "es-application-slow"
    enabled                   = true
  }
}
log_publishing_options_retention = "30"
cloudwatch_log_enabled           = "true"