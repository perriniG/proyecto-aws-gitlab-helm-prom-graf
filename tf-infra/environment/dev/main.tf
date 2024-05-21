## Dev environment

provider "aws" {
  region = var.region

}

module "networking" {
  source            = "../../modules/networking"
  vpc_name          = "dev-vpc"
  vpc_cidr_block    = "10.0.0.0/16"
  public_subnets    = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets   = ["10.0.3.0/24", "10.0.4.0/24"]
  availability_zone = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
}