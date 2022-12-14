module "aws_es" {

  source = "../../"

  domain_name           = var.es_domain_name
  elasticsearch_version = var.es_version

  cluster_config = {
    dedicated_master_enabled     = true
    instance_count               = 3
    instance_type                = "r5.large.elasticsearch"
    zone_awareness_enabled       = true
    warm_enabled                 = true
    warm_type                    = "ultrawarm1.medium.elasticsearch"
    warm_count                   = 2
    cold_storage_options_enabled = true
    availability_zone_count      = 3
  }

  ebs_options = {
    ebs_enabled = true
    volume_size = 25
  }

  encrypt_at_rest = {
    enabled = true
    #kms_key_id = "arn:aws:kms:us-east-1:123456789101:key/cccc103b-4ba3-5993-6fc7-b7e538b25fd8"
  }

  log_publishing_options = {
    index_slow_logs = {
      enabled                          = false
      cloudwatch_log_group_arn         = "arn:aws:logs:us-east-1:758889637411:log-group:/aws/elasticsearch/index_slow_logs:*"
      log_publishing_options_retention = 90
    }
    search_slow_logs = {
      enabled                  = false
      cloudwatch_log_group_arn = "arn:aws:logs:us-east-1:758889637411:log-group:/aws/elasticsearch/search_slow_logs:*"
    }
    es_application_logs = {
      enabled                   = false
      cloudwatch_log_group_name = "es_application_logs_dev"
    }
    audit_logs = {
      enabled                   = false
      cloudwatch_log_group_name = "audit_logs_dev"
    }
  }

  advanced_options = {
    "rest.action.multi.allow_explicit_index" = true
  }

  access_policies = templatefile("${path.module}/whitelits.tpl", {
    region      = data.aws_region.current.name,
    account     = data.aws_caller_identity.current.account_id,
    domain_name = var.es_domain_name,
    whitelist   = jsonencode(var.whitelist)
  })

  node_to_node_encryption_enabled                = true
  snapshot_options_automated_snapshot_start_hour = 23

  timeouts_update = "60m"

  tags = {
    Owner = "sysops"
    env   = "dev"
  }
}
