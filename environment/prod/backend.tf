# backend.tf (real-time companies style)

terraform {
  backend "s3" {
    bucket         = "terraform-backend-faisal-khan"
    key            = "eks/prod/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "terraform-locks"
  }
}
