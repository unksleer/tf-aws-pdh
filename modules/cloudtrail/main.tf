# Create s3 bucket for CloudTrail
resource "aws_s3_bucket" "pdh-s3" {
    bucket = var.pdh-s3
}


resource "aws_s3_bucket_public_access_block" "pdh-s3-block" {
    bucket = var.pdh-s3
    block_public_acls = true
    block_public_policy = true
    ignore_public_acls = true
    restrict_public_buckets = true
}

# S3 CloudTrail Bucket Policy
resource "aws_s3_bucket_policy" "cloudtrail_ps_policy" {
  bucket = aws_s3_bucket.pdh-s3.id
  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Sid" : "AWSCloudTrailAclCheck20150319",
        "Effect" : "Allow",
        "Principal" : { "Service" : "cloudtrail.amazonaws.com"},
        "Action" : [
          "s3:PutObject",
          "s3:GetBucketAcl",
          "s3:GetBucketPolicy",
          "s3:ListBucket",
          "s3:PutObjectAcl",
          "s3:DeleteObject",
          "s3:GetObject",
          "s3:GetObjectVersion",
          "s3:GetBucketLocation"
          ]
        "Resource": [
          "arn:aws:s3:::your-cloudtrail-bucket", //replace with your cloudtrail bucket name - pdh-s3
          "arn:aws:s3:::your-cloudtrail-bucket/*" //replace with your cloudtrail bucket name - pdh-s3
        ]
      }
    ]
  })
}


# Create CloudTrail
resource "aws_cloudtrail" "pdh4ct" {
  depends_on = [aws_s3_bucket_policy.cloudtrail_ps_policy]
  name  = var.pdh-ct
  s3_bucket_name = var.pdh-s3
  enable_logging = true
  event_selector {
    read_write_type = "All"

    data_resource {
      type   = "AWS::S3::Object"
      values = ["arn:aws:s3:::${var.pdh-s3}/*"]
    }
  }
}