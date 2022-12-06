
terraform {
  required_version = ">= 0.13.1"
}

provider tls {
	version = "<4.0.0"
}

module "eks" {
  source = "../../../../../_terraform_modules/xebia/terraform-aws-xebia-eks@v1.4.3"
	
  cluster_name = var.cluster_name
  required_labels = var.required_labels
}
