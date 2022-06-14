provider "aws" {
  region = "eu-west-2" # Europe London
}

module "basic_app_server_infrastructure" {
  source = "github.com/CiucurDaniel/terraform-modules//basic_app_server"

  ami_id = var.ami_id
  instance_type = var.instance_type
  environment = var.environment
  server_port = var.server_port
}