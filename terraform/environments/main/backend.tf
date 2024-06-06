terraform {
  backend "s3" {
    bucket  = "terraform-test423526"
    key     = "terraform-test423526/terraform.tfstate" #koko
    region  = "ap-northeast-1"
  }
}