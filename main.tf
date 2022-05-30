provider "aws" {
  region = "ap-south-1"
}

locals {
  name_env = "tj"
  owner_env = "Tejas"
}

resource "aws_vpc" "vpc-test" {
    cidr_block = "192.168.1.0/24"

    tags = {
      "Name" = "${local.name_env}-vpc-test"
      "Owner" = "${local.owner_env}"
    }
}

resource "aws_vpc" "vpc-test2" {
    cidr_block = "192.168.2.0/24"

    tags = {
      "Name" = "${local.name_env}-vpc-test2"
      "Owner" = "${local.owner_env}"
    }
}
