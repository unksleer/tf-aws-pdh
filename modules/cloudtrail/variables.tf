variable "pdh-s3" {
  default     = "your-cloudtrail-bucket" #change bucket name accordingly for your environment
  description = "CloudTrail Bucket for PDH Environment"
}

variable "pdh-ct" {
  default     = "aac-ct-pdh-env"
  description = "CloudTrail for PDH Env"
}
variable "ct_s3_prefix" {
  description = "S3 prefix for CloudTrail logs"
  type        = string
  default     = "customer-ct-bucket"
}