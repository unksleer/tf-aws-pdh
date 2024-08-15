terraform {
  backend "s3" {
    bucket         = "your-terraform-state-bucket" # Replace with your bucket that stores the state file 
    key            = "terraform.tfstate" 
    region         = "us-east-1"  # Replace with your desired region

    
  }
}
