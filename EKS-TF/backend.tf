terraform {
  backend "s3" {
    bucket         = "my-bucket-terraform-state"
    region         = "ap-south-1"
    key            = "Chatbot-UI/EKS-TF/terraform.tfstate"
    dynamodb_table = "Lock-Files"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}
