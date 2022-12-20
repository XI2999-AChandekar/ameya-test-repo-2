
terraform {
  backend "s3" {	
    bucket = "xlr8s-artifacts"
    encrypt = "false"
    key = "ameya-project-12ad70e/envs/dev-4384c0f/01-infra/eks-with-vpc-03-171d52e/01-vpc-for-eks/terraform.tfstate"
    region = "ap-south-1"
  }
}
