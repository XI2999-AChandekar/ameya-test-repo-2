
terraform {
  backend "s3" {	
    bucket = "xlr8s-artifacts"
    encrypt = "false"
    key = "ameya-project-12ad70e/envs/dev-4384c0f/01-infra/my-eks-5-19c9ea4/01-vpc-for-eks/terraform.tfstate"
    region = "ap-south-1"
  }
}
