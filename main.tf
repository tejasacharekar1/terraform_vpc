provider "aws" {
  region = var.region
}

locals {
  name_env = "tj"
  owner_env = "Tejas"
}

resource "aws_vpc" "vpc-test" {
    cidr_block = var.vpcCidr

    tags = {
      "Name" = "${local.name_env}-vpc-test"
      "Owner" = "${local.owner_env}"
    }
}

resource "aws_vpc" "vpc-test2" {
    cidr_block = var.vpc2

    tags = {
      "Name" = "${local.name_env}-vpc-test2"
      "Owner" = "${local.owner_env}"
    }
}