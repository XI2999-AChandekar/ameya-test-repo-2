
terraform {
  backend "s3" {	
    bucket = "xlr8s-artifacts"
    encrypt = "false"
    key = "ameya-project-53b79fe/envs/dev-588f6b2/01-infra/resource-11-450ba2d/03-eks/terraform.tfstate"
    region = "ap-south-1"
  }
}
