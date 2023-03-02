provider "aws" {
  region = "us-west-2"
}

module "vpc" {
  source =  "../../"

  vpc_name = "vpc-name"
}

output "id" {
  value = module.vpc
}
