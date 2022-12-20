# Terraform Script to create AWS Elasticsearch_domain

## Resources Created

* Elasticsearch_domain configuration
* Aws_cloudwatch_log_group
* Aws_iam_service_linked_role
* Kibana endpoint


## Best Practices

* Node_to_node_encryption
* Cluster_configuration
* Custom endpoint
* log_publishing_options


## Module reference

https://github.com/lgallard/terraform-aws-elasticsearch/tree/0.11.0

## Step's to upgrade elastic_search_module
Step-1 

Comment the log_publishing_options_default (ref. module/main.tf from line 249 to 254 )

Step-2 

Pass the log_publishing_options as variable instate of local.log_publishing_options(ref. module/main.tf (made changes in dynamic "log_publishing_options") from line-117 to 124)

Step-3 

we have modify IAM.tf file with updated code (ref. module/main.tf from line 1 to 8 )

## Inputs

| Name | Description | Type | Default |
|------|-------------|------|---------|
| <a name="input_region_name"></a> [region\_name](#input\region\_name) | Region name | `string` | `[]`|
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | Name of the domain | `string` | `[]` |
| <a name="input_elasticsearch_version"></a> [elasticsearch\_version](#input\_elasticsearch\_version) | The version of Elasticsearch to deploy. | `string` | `[]` |
| <a name="input_cluster_config_instance_type"></a> [cluster\_config\_instance\_type](#input\_cluster\_config\_instance\_type) | Instance type of data nodes in the cluster | `string` | `[]` |
| <a name="input_instance_count"></a> [instance\_count](#input\_cluster\_config\_instance\_count) | Number of instances in the cluster | `number` | `[]` |
| <a name="input_cluster_config_warm_enabled"></a> [cluster\_config\_warm\_enabled](#input\_cluster\_config\_warm\_enabled) | Indicates whether to enable warm storage | `bool` | `[]` |
| <a name="input_cluster_config_warm_count"></a> [cluster\_config\_warm\_count](#input\_cluster\_config\_warm\_count) | The number of warm nodes in the cluster | `number` | `[]` |
| <a name="input_cluster_config_warm_type"></a> [cluster\_config\_warm\_type](#input\_cluster\_config\_warm\_type) | The instance type for the Elasticsearch cluster's warm nodes | `string` | `[]` |
| <a name="input_volume_size"></a> [volume\_size](#input\_volume\_size) | The volume_size of instance to deploy | `number` | `[]` |
| <a name="input_custom_endpoint_enabled"></a> [custom\_endpoint\_enabled](#input\_custom\_endpoint\_enabled) | If want to enable custom_endpoint | `bool` | `[]` |
| <a name="input_custom_endpoint"></a> [custom\_endpoint](#input\_custom\_endpoint) | To set custom_endpoint need endpoint | `string` | `[]` |
| <a name="input_custom_endpoint_certificate_arn"></a> [custom\_endpoint\_certificate\_arn](#input\_custom\_endpoint\_certificate\_arn) | Input for custom endpoint certificate arn | `any` | `[]` |
| <a name="input_kms_key_id"></a> [kms\_key\_id](#input\_kms\_key\_id) | Input for kms_key_id | `any` | `[]` |
| <a name="input_cloudwatch_log_group_arn"></a> [cloudwatch\_log\_group\_arn](#input\_cloudwatch\_log\_group\_arn) | Input for cloudwatch_log_group_arn | `any` | `[]` |
| <a name="input_retention_in_days"></a> [retention\_in\_days](#input\_retention\_in\_days) | Input for retention_period of log files | `number` | `[]` |
| <a name="input_vpc_subnet_id"></a> [vpc\_subnet\_id](#input\_vpc\_subnet\_id) | List of VPC Subnet IDs for the Elasticsearch domain endpoints to be created in | `list(string)` | `[]` |
| <a name="input_Security_group_id"></a> [Security\_group\_id](#input\_Security\_group\_id) | List of VPC Security Group IDs to be applied to the Elasticsearch domain endpoints. If omitted, the default Security Group for the VPC will be used  | `list(string)` | `[]` |


## Outputs

| Name | Description |
|------|-------------|
| <a name="output_elasticsearch_domain_arn"></a> [elasticsearch\_domain\_arn](#output\elasticsearch\_domain\_arn) | Amazon Resource Name (ARN) of the elasticsearch domain |
| <a name="output_elasticsearch_domain_id"></a> [elasticsearch\_domain\_endpoint\_id](#output\elasticsearch\_domain\_id) | Amazon elasticsearch_domain_id |
| <a name="output_elasticsearch_domain_endpoint"></a> [elasticsearch\_domain\_endpoint](#output\elasticsearch\_domain\_endpoint) | Amazon elasticsearch domain endpoint|
| <a name="output_elasticsearch_domain_kibana_endpoint"></a> [elasticsearch\_domain\_kibana\_endpoint](#output\elasticsearch\_domain\_kibana\_endpoint) |Amazon elasticsearch_domain_kibana_endpoint|







<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.47.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.47.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_elasticsearch_domain"></a> [elasticsearch\_domain](#module\_elasticsearch\_domain) | ./modules/terraform-aws-elasticsearch-0.14.1 | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_advanced_options"></a> [advanced\_options](#input\_advanced\_options) | Key-value string pairs to specify advanced configuration options. Note that the values for these configuration options must be strings (wrapped in quotes) or they may be wrong and cause a perpetual diff, causing Terraform to want to recreate your Elasticsearch domain on every apply | `map(string)` | `{}` | no |
| <a name="input_advanced_security_options"></a> [advanced\_security\_options](#input\_advanced\_security\_options) | Options for fine-grained access control | `any` | `{}` | no |
| <a name="input_advanced_security_options_create_random_master_password"></a> [advanced\_security\_options\_create\_random\_master\_password](#input\_advanced\_security\_options\_create\_random\_master\_password) | Whether to create random master password for Elasticsearch master user | `bool` | `false` | no |
| <a name="input_advanced_security_options_enabled"></a> [advanced\_security\_options\_enabled](#input\_advanced\_security\_options\_enabled) | Whether advanced security is enabled (Forces new resource) | `bool` | `false` | no |
| <a name="input_advanced_security_options_internal_user_database_enabled"></a> [advanced\_security\_options\_internal\_user\_database\_enabled](#input\_advanced\_security\_options\_internal\_user\_database\_enabled) | Whether the internal user database is enabled. If not set, defaults to false by the AWS API. | `bool` | `false` | no |
| <a name="input_advanced_security_options_master_user_arn"></a> [advanced\_security\_options\_master\_user\_arn](#input\_advanced\_security\_options\_master\_user\_arn) | ARN for the master user. Only specify if `internal_user_database_enabled` is not set or set to `false`) | `string` | `null` | no |
| <a name="input_advanced_security_options_master_user_password"></a> [advanced\_security\_options\_master\_user\_password](#input\_advanced\_security\_options\_master\_user\_password) | The master user's password, which is stored in the Amazon Elasticsearch Service domain's internal database. Only specify if `internal_user_database_enabled` is set to `true`. | `string` | `null` | no |
| <a name="input_advanced_security_options_master_user_username"></a> [advanced\_security\_options\_master\_user\_username](#input\_advanced\_security\_options\_master\_user\_username) | The master user's username, which is stored in the Amazon Elasticsearch Service domain's internal database. Only specify if `internal_user_database_enabled` is set to `true`. | `string` | `null` | no |
| <a name="input_advanced_security_options_random_master_password_length"></a> [advanced\_security\_options\_random\_master\_password\_length](#input\_advanced\_security\_options\_random\_master\_password\_length) | Length of random master password to create | `number` | `16` | no |
| <a name="input_assume_role_arn"></a> [assume\_role\_arn](#input\_assume\_role\_arn) | assume role in which account to create | `string` | `""` | no |
| <a name="input_cloudwatch_log_enabled"></a> [cloudwatch\_log\_enabled](#input\_cloudwatch\_log\_enabled) | Change to false to avoid deploying any Cloudwatch Logs resources | `bool` | `true` | no |
| <a name="input_cluster_config"></a> [cluster\_config](#input\_cluster\_config) | Cluster configuration of the domain | `any` | `{}` | no |
| <a name="input_cluster_config_availability_zone_count"></a> [cluster\_config\_availability\_zone\_count](#input\_cluster\_config\_availability\_zone\_count) | Number of Availability Zones for the domain to use with | `number` | `3` | no |
| <a name="input_cluster_config_cold_storage_options_enabled"></a> [cluster\_config\_cold\_storage\_options\_enabled](#input\_cluster\_config\_cold\_storage\_options\_enabled) | Indicates whether to enable cold storage for an Elasticsearch domain | `bool` | `false` | no |
| <a name="input_cluster_config_dedicated_master_count"></a> [cluster\_config\_dedicated\_master\_count](#input\_cluster\_config\_dedicated\_master\_count) | Number of dedicated master nodes in the cluster | `number` | `3` | no |
| <a name="input_cluster_config_dedicated_master_enabled"></a> [cluster\_config\_dedicated\_master\_enabled](#input\_cluster\_config\_dedicated\_master\_enabled) | Indicates whether dedicated master nodes are enabled for the cluster | `bool` | `true` | no |
| <a name="input_cluster_config_dedicated_master_type"></a> [cluster\_config\_dedicated\_master\_type](#input\_cluster\_config\_dedicated\_master\_type) | Instance type of the dedicated master nodes in the cluster | `string` | `"r5.large.elasticsearch"` | no |
| <a name="input_cluster_config_instance_count"></a> [cluster\_config\_instance\_count](#input\_cluster\_config\_instance\_count) | Number of instances in the cluster | `number` | `3` | no |
| <a name="input_cluster_config_instance_type"></a> [cluster\_config\_instance\_type](#input\_cluster\_config\_instance\_type) | Instance type of data nodes in the cluster | `string` | `"r5.large.elasticsearch"` | no |
| <a name="input_cluster_config_warm_count"></a> [cluster\_config\_warm\_count](#input\_cluster\_config\_warm\_count) | The number of warm nodes in the cluster | `number` | `null` | no |
| <a name="input_cluster_config_warm_enabled"></a> [cluster\_config\_warm\_enabled](#input\_cluster\_config\_warm\_enabled) | Indicates whether to enable warm storage | `bool` | `false` | no |
| <a name="input_cluster_config_warm_type"></a> [cluster\_config\_warm\_type](#input\_cluster\_config\_warm\_type) | The instance type for the Elasticsearch cluster's warm nodes | `string` | `null` | no |
| <a name="input_cluster_config_zone_awareness_enabled"></a> [cluster\_config\_zone\_awareness\_enabled](#input\_cluster\_config\_zone\_awareness\_enabled) | Indicates whether zone awareness is enabled. To enable awareness with three Availability Zones | `bool` | `false` | no |
| <a name="input_cognito_options"></a> [cognito\_options](#input\_cognito\_options) | Options for Amazon Cognito Authentication for Kibana | `any` | `{}` | no |
| <a name="input_cognito_options_enabled"></a> [cognito\_options\_enabled](#input\_cognito\_options\_enabled) | Specifies whether Amazon Cognito authentication with Kibana is enabled or not | `bool` | `false` | no |
| <a name="input_cognito_options_identity_pool_id"></a> [cognito\_options\_identity\_pool\_id](#input\_cognito\_options\_identity\_pool\_id) | ID of the Cognito Identity Pool to use | `string` | `""` | no |
| <a name="input_cognito_options_role_arn"></a> [cognito\_options\_role\_arn](#input\_cognito\_options\_role\_arn) | ARN of the IAM role that has the AmazonESCognitoAccess policy attached | `string` | `""` | no |
| <a name="input_cognito_options_user_pool_id"></a> [cognito\_options\_user\_pool\_id](#input\_cognito\_options\_user\_pool\_id) | ID of the Cognito User Pool to use | `string` | `""` | no |
| <a name="input_create_service_link_role"></a> [create\_service\_link\_role](#input\_create\_service\_link\_role) | Create service link role for AWS Elasticsearch Service | `bool` | `true` | no |
| <a name="input_domain_endpoint_options"></a> [domain\_endpoint\_options](#input\_domain\_endpoint\_options) | Domain endpoint HTTP(S) related options. | `any` | `{}` | no |
| <a name="input_domain_endpoint_options_custom_endpoint"></a> [domain\_endpoint\_options\_custom\_endpoint](#input\_domain\_endpoint\_options\_custom\_endpoint) | Fully qualified domain for your custom endpoint | `string` | `null` | no |
| <a name="input_domain_endpoint_options_custom_endpoint_certificate_arn"></a> [domain\_endpoint\_options\_custom\_endpoint\_certificate\_arn](#input\_domain\_endpoint\_options\_custom\_endpoint\_certificate\_arn) | ACM certificate ARN for your custom endpoint | `string` | `null` | no |
| <a name="input_domain_endpoint_options_custom_endpoint_enabled"></a> [domain\_endpoint\_options\_custom\_endpoint\_enabled](#input\_domain\_endpoint\_options\_custom\_endpoint\_enabled) | Whether to enable custom endpoint for the Elasticsearch domain | `bool` | `false` | no |
| <a name="input_domain_endpoint_options_enforce_https"></a> [domain\_endpoint\_options\_enforce\_https](#input\_domain\_endpoint\_options\_enforce\_https) | Whether or not to require HTTPS | `bool` | `false` | no |
| <a name="input_domain_endpoint_options_tls_security_policy"></a> [domain\_endpoint\_options\_tls\_security\_policy](#input\_domain\_endpoint\_options\_tls\_security\_policy) | The name of the TLS security policy that needs to be applied to the HTTPS endpoint. Valid values: `Policy-Min-TLS-1-0-2019-07` and `Policy-Min-TLS-1-2-2019-07` | `string` | `"Policy-Min-TLS-1-2-2019-07"` | no |
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | Name of the domain | `string` | n/a | yes |
| <a name="input_ebs_enabled"></a> [ebs\_enabled](#input\_ebs\_enabled) | Whether EBS volumes are attached to data nodes in the domain | `bool` | `true` | no |
| <a name="input_ebs_options"></a> [ebs\_options](#input\_ebs\_options) | EBS related options, may be required based on chosen instance size | `any` | `{}` | no |
| <a name="input_ebs_options_iops"></a> [ebs\_options\_iops](#input\_ebs\_options\_iops) | The baseline input/output (I/O) performance of EBS volumes attached to data nodes. Applicable only for the Provisioned IOPS EBS volume type | `number` | `0` | no |
| <a name="input_ebs_options_volume_size"></a> [ebs\_options\_volume\_size](#input\_ebs\_options\_volume\_size) | The size of EBS volumes attached to data nodes (in GB). Required if ebs\_enabled is set to true | `number` | `10` | no |
| <a name="input_ebs_options_volume_type"></a> [ebs\_options\_volume\_type](#input\_ebs\_options\_volume\_type) | The type of EBS volumes attached to data nodes | `string` | `"gp2"` | no |
| <a name="input_elasticsearch_version"></a> [elasticsearch\_version](#input\_elasticsearch\_version) | The version of Elasticsearch to deploy. | `string` | `"7.1"` | no |
| <a name="input_encrypt_at_rest"></a> [encrypt\_at\_rest](#input\_encrypt\_at\_rest) | Encrypt at rest options. Only available for certain instance types | `any` | `{}` | no |
| <a name="input_encrypt_at_rest_enabled"></a> [encrypt\_at\_rest\_enabled](#input\_encrypt\_at\_rest\_enabled) | Whether to enable encryption at rest | `bool` | `true` | no |
| <a name="input_encrypt_at_rest_kms_key_id"></a> [encrypt\_at\_rest\_kms\_key\_id](#input\_encrypt\_at\_rest\_kms\_key\_id) | The KMS key id to encrypt the Elasticsearch domain with. If not specified then it defaults to using the aws/es service KMS key | `string` | `"alias/aws/es"` | no |
| <a name="input_extra_tags"></a> [extra\_tags](#input\_extra\_tags) | Add extra tags to your resource | `map(string)` | `{}` | no |
| <a name="input_log_publishing_options"></a> [log\_publishing\_options](#input\_log\_publishing\_options) | Options for publishing slow logs to CloudWatch Logs | `any` | `{}` | no |
| <a name="input_log_publishing_options_retention"></a> [log\_publishing\_options\_retention](#input\_log\_publishing\_options\_retention) | Retention in days for the created Cloudwatch log group | `number` | `90` | no |
| <a name="input_node_to_node_encryption"></a> [node\_to\_node\_encryption](#input\_node\_to\_node\_encryption) | Node-to-node encryption options | `any` | `{}` | no |
| <a name="input_node_to_node_encryption_enabled"></a> [node\_to\_node\_encryption\_enabled](#input\_node\_to\_node\_encryption\_enabled) | Whether to enable node-to-node encryption | `bool` | `true` | no |
| <a name="input_region"></a> [region](#input\_region) | provider region, where resources will be created | `string` | `"ap-south-1"` | no |
| <a name="input_snapshot_options"></a> [snapshot\_options](#input\_snapshot\_options) | Snapshot related options | `any` | `{}` | no |
| <a name="input_snapshot_options_automated_snapshot_start_hour"></a> [snapshot\_options\_automated\_snapshot\_start\_hour](#input\_snapshot\_options\_automated\_snapshot\_start\_hour) | Hour during which the service takes an automated daily snapshot of the indices in the domain | `number` | `0` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource | `map(any)` | `{}` | no |
| <a name="input_timeouts"></a> [timeouts](#input\_timeouts) | Timeouts map. | `map(any)` | `{}` | no |
| <a name="input_timeouts_update"></a> [timeouts\_update](#input\_timeouts\_update) | How long to wait for updates. | `string` | `null` | no |
| <a name="input_vpc_options"></a> [vpc\_options](#input\_vpc\_options) | VPC related options, see below. Adding or removing this configuration forces a new resource | `any` | `{}` | no |
| <a name="input_vpc_options_security_group_ids"></a> [vpc\_options\_security\_group\_ids](#input\_vpc\_options\_security\_group\_ids) | List of VPC Security Group IDs to be applied to the Elasticsearch domain endpoints. If omitted, the default Security Group for the VPC will be used | `list(any)` | `[]` | no |
| <a name="input_vpc_options_subnet_ids"></a> [vpc\_options\_subnet\_ids](#input\_vpc\_options\_subnet\_ids) | List of VPC Subnet IDs for the Elasticsearch domain endpoints to be created in | `list(any)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | Amazon Resource Name (ARN) of the domain |
| <a name="output_domain_id"></a> [domain\_id](#output\_domain\_id) | Unique identifier for the domain |
| <a name="output_endpoint"></a> [endpoint](#output\_endpoint) | Domain-specific endpoint used to submit index, search, and data upload requests |
| <a name="output_kibana_endpoint"></a> [kibana\_endpoint](#output\_kibana\_endpoint) | Domain-specific endpoint for kibana without https scheme |
| <a name="output_master_password"></a> [master\_password](#output\_master\_password) | Master password |
| <a name="output_master_username"></a> [master\_username](#output\_master\_username) | Master username |
| <a name="output_vpc_options_availability_zones"></a> [vpc\_options\_availability\_zones](#output\_vpc\_options\_availability\_zones) | If the domain was created inside a VPC, the names of the availability zones the configured subnet\_ids were created inside |
| <a name="output_vpc_options_vpc_id"></a> [vpc\_options\_vpc\_id](#output\_vpc\_options\_vpc\_id) | If the domain was created inside a VPC, the ID of the VPC |
<!-- END_TF_DOCS -->