terraform {
  backend "s3" {
    bucket = "aj-terraform-state-bucket"
    key = "terraform-project/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "terraform-locks"
  }
}