  
provider "aws" {
  region  = "${var.REGION}"
  profile = "${var.PROFILE}"
}

resource "aws_ecs_cluster" "simplr-ecs" {
  name = "${var.cluster_name}"
}

data "aws_ecr_repository" "simplr-web" {
  name = "${var.web_ecr_name}"
}

data "aws_ecr_repository" "simplr-server" {
  name = "${var.server_ecr_name}"
}
