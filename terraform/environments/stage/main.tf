resource "aws_s3_bucket" "this" {
  bucket = "test-bucket20230810345"
}

module "vpc" {
  source = "../../moduels/vpc"
}

module "ec2" {
  source  = "../../moduels/ec2"
  sg_rule = module.sg_rule
  vpc_id  = module.vpc.vpc_id
}