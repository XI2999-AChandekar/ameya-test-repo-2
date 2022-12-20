
terraform {
  backend "s3" {	
    bucket = "xlr8s-artifacts"
    encrypt = "false"
    key = "ameya-project-12ad70e/envs/dev-4384c0f/01-infra/resource-618-5017c3b/04-elasticsearch/terraform.tfstate"
    region = "ap-south-1"
  }
}
