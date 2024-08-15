# Private Data Handling Terraform Port from CloudFormation

## Attention:  
This is base code set to assist with automating Private Data Handling for Alteyrx Analytics Cloud Platform in an AWS environment, there is no support for this code and it is being offered as a staring poing only, modify or enhance for your environment at will.   

**Purpose:**  Terraform to support the enablement of the Private Data Handling AWS infrastructure for Alteryx Analytics Cloud Platform with base security additions of **S3 backed CloudTrail and VPC Flow Logs**

### Features:
Set up required VPC, CIDR,  Subnets required for PDH

### Security Additions:
Cloudtrail, VPC Flow Logging

### How to use:
https://developer.hashicorp.com/terraform/tutorials/automation/automate-terraform


## New users should modify the following files

provider.tf - add access_key and secret_key

backend.tf - create a new bucket to store your state file and add the bucket name here

/network/variable.tf - modify vpc-s3 variable to match your flow log bucket name

/iam/variables.tf - make sure this iam user and policy does not already exist. This is the offical automation account for aacp which will be used for interactions between different cloud services

/cloudtrail/variables.tf - modify the pdh-s3 variable "default=" to the name of the bucket you want to store your cloudtrail logs in

/cloudtrail/main.tf - modify aws_s3_bucket_policy lines 37 & 38 to match your bucket name for cloudtrail logs. same value you put in for pdh-s3 in variables.tf