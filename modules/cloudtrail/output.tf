output "s3_bucket_id" {
    description = "ID of the created S3 bucket for CloudTrail"
    value       = aws_s3_bucket.pdh-s3.id
}

output "cloudtrail_id" {
    description = "ID of the created CloudTrail"
    value       = aws_cloudtrail.pdh4ct.id
}
