provider "aws" {
  region = "eu-west-2" # Europe London
  access_key = "AKIAXF7PSYJXU4EYI77A"
  secret_key = "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"
}

module "basic_app_server_infrastructure" {
  source = "github.com/CiucurDaniel/terraform-modules//basic_app_server?ref=v2"

  ami_id = var.ami_id
  instance_type = var.instance_type
  environment = var.environment
  server_port = var.server_port
}