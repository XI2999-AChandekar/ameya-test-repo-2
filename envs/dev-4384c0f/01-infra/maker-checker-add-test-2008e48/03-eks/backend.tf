
terraform {
  backend "s3" {	
    bucket = "xlr8s-artifacts"
    encrypt = "false"
    key = "ameya-project-12ad70e/envs/dev-4384c0f/01-infra/maker-checker-add-test-2008e48/03-eks/terraform.tfstate"
    region = "ap-south-1"
  }
}
