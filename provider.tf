# Configure the AWS provider
provider "aws" {
  region = "us-east-1"  # Replace with your desired region

  # Optionally, you can specify AWS access and secret keys here
  # If not specified, the provider will use the default AWS CLI configuration or environment variables
  
  access_key = ""
  secret_key = ""
  
  # Configure the AWS session token if using temporary security credentials
  # session_token = "YOUR_AWS_SESSION_TOKEN"
}
