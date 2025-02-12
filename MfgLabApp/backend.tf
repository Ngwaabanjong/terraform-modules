
terraform {
  backend "s3" {
    bucket = "prj-terra-s3-bucket"
    key    = "MfgLabApp.tfstate"
    region = "us-east-1"
  }
}