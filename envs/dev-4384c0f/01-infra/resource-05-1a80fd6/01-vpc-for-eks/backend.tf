
terraform {
  backend "s3" {	
    bucket = "xlr8s-artifacts"
    encrypt = "false"
    key = "ameya-project-12ad70e/envs/dev-4384c0f/01-infra/resource-05-1a80fd6/01-vpc-for-eks/terraform.tfstate"
    region = "ap-south-1"
  }
}
