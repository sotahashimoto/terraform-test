terraform {
  backend "s3" {
    bucket  = "terraform-test423526"
    key     = "terraform-test423526/prd/terraform.tfstate"
    region  = "ap-northeast-1"
  }
}