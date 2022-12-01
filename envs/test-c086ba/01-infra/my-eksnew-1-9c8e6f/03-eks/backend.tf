
terraform {
  backend "s3" {	
    bucket = "xlr8s-artifacts"
    encrypt = "false"
    key = "ameya-project-48a244e/envs/test-c086ba/01-infra/my-eksnew-1-9c8e6f/03-eks/terraform.tfstate"
    region = "ap-south-1"
  }
}
