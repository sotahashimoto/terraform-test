terraform {
  backend "s3" {
    bucket  = "terraform-state-bucket"
    key     = "terraform.state.test" #koko
    region  = "ap-northeast-1"
  }
}