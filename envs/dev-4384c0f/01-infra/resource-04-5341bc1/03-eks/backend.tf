
terraform {
  backend "s3" {	
    bucket = "xlr8s-artifacts"
    encrypt = "false"
    key = "ameya-project-12ad70e/envs/dev-4384c0f/01-infra/resource-04-5341bc1/03-eks/terraform.tfstate"
    region = "ap-south-1"
  }
}
