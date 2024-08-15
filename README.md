# Private Data Handling Terraform Port from CloudFormation

**Purpose:**  Terraform to support the enablement of the Private Data Handling AWS infrastructure for Alteryx Analytics Cloud Platform with base security additions of **S3 backed CloudTrail and VPC Flow Logs**

### Features:

### Security Additions:

### How to use:

### Testing Senarios:

### Troubleshooting:

### Future Enhancements and Functionality:



## New users should modify the following files

provider.tf - add access_key and secret_key

backend.tf - create a new bucket to store your state file and add the bucket name here

/network/variable.tf - modify vpc-s3 variable to match your flow log bucket name

/iam/variables.tf - make sure this iam user and policy does not already exist. This is the offical automation account for aacp which will be used for interactions between different cloud services

/cloudtrail/variables.tf - modify the pdh-s3 variable "default=" to the name of the bucket you want to store your cloudtrail logs in

/cloudtrail/main.tf - modify aws_s3_bucket_policy lines 37 & 38 to match your bucket name for cloudtrail logs. same value you put in for pdh-s3 in variables.tf