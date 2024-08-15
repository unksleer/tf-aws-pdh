
//new code

# aws_iam_user:
resource "aws_iam_user" "aac_iam" {
  name = var.iam_user_name
  tags = {
      tag-key   = "AACResource"
      tag-value = "aac_iam_user"
  }
}

# aws_iam_policy.user-managed-policy:
resource "aws_iam_policy" "aac_mgmt_policy" {
  description = var.iam_policy_description
  name        = var.iam_policy_name
  path        = "/"
  policy      = jsonencode({
    Statement = [
      {
        Action   = "iam:PassRole"
        Condition = {
          StringEqualsIfExists = {
            "iam:PassedToService" = [
              "ec2.amazonaws.com",
              "ec2.amazonaws.com.cn",
            ]
          }
        }
        Effect   = "Allow"
        Resource = "arn:aws:iam::*:role/*"
        Sid      = "VisualEditor0"
      },
      {
        Action   = [
          "eks:CreateAddon",
          "eks:CreateNodegroup",
          "eks:DeleteAddon",
          "eks:DeleteCluster",
          "eks:DeleteNodegroup",
          "eks:DescribeAddon",
          "eks:DescribeCluster",
          "eks:DescribeNodegroup",
          "eks:DescribeUpdate",
          "eks:ListNodegroups",
          "eks:ListUpdates",
          "eks:TagResource",
          "eks:UntagResource",
          "eks:UpdateClusterConfig",
          "eks:UpdateClusterVersion",
          "eks:UpdateNodegroupConfig",
          "eks:UpdateNodegroupVersion",
          "iam:CreateServiceLinkedRole",
          "kms:CreateGrant",
          "kms:Decrypt",
          "kms:DescribeKey",
          "kms:Encrypt",
          "kms:GetKeyPolicy",
          "kms:GetKeyRotationStatus",
          "kms:ListGrants",
          "kms:ListResourceTags",
          "kms:ListRetirableGrants",
          "kms:PutKeyPolicy",
          "kms:RetireGrant",
          "kms:RevokeGrant",
          "kms:ScheduleKeyDeletion",
          "kms:TagResource",
          "kms:UntagResource",
        ]
        Effect   = "Allow"
        Resource = [
          "arn:aws:eks:*:*:addon/*/*/*",
          "arn:aws:eks:*:*:cluster/*",
          "arn:aws:eks:*:*:identityproviderconfig/*/*/*/*",
          "arn:aws:eks:*:*:nodegroup/*/*/*",
          "arn:aws:iam::*:role/*",
          "arn:aws:kms:*:*:key/*",
        ]
        Sid      = "VisualEditor1"
      },
      {
        Action   = [
          "iam:AttachRolePolicy",
          "iam:CreateOpenIDConnectProvider",
          "iam:CreatePolicy",
          "iam:CreatePolicyVersion",
          "iam:CreateRole",
          "iam:DeleteOpenIDConnectProvider",
          "iam:DeletePolicy",
          "iam:DeletePolicyVersion",
          "iam:DeleteRole",
          "iam:DeleteRolePolicy",
          "iam:DetachRolePolicy",
          "iam:GetOpenIDConnectProvider",
          "iam:GetPolicy",
          "iam:GetPolicyVersion",
          "iam:GetRole",
          "iam:GetRolePolicy",
          "iam:GetUser",
          "iam:GetUserPolicy",
          "iam:ListAttachedRolePolicies",
          "iam:ListAttachedUserPolicies",
          "iam:ListGroupsForUser",
          "iam:ListInstanceProfilesForRole",
          "iam:ListPolicyTags",
          "iam:ListPolicyVersions",
          "iam:ListRolePolicies",
          "iam:PassRole",
          "iam:PutRolePolicy",
          "iam:TagOpenIDConnectProvider",
          "iam:TagPolicy",
          "iam:TagRole",
          "iam:UntagOpenIDConnectProvider",
          "iam:UntagPolicy",
          "iam:UntagRole",
          "iam:UpdateAssumeRolePolicy",
          "iam:UpdateOpenIDConnectProviderThumbprint",
          "iam:UpdateRole",
        ]
        Effect   = "Allow"
        Resource = [
          "arn:aws:iam::*:oidc-provider/*",
          "arn:aws:iam::*:policy/*",
          "arn:aws:iam::*:role/*",
          "arn:aws:iam::*:user/*",
        ]
        Sid      = "VisualEditor2"
      },
      {
        Action   = [
          "autoscaling:*",
          "ec2:*",
          "eks:CreateCluster",
          "eks:ListClusters",
          "elasticloadbalancing:*",
          "iam:AddRoleToInstanceProfile",
          "iam:CreateInstanceProfile",
          "iam:DeleteInstanceProfile",
          "iam:GetAccountName",
          "iam:GetInstanceProfile",
          "iam:ListAccountAliases",
          "iam:ListRoles",
          "iam:RemoveRoleFromInstanceProfile",
          "iam:TagInstanceProfile",
          "iam:UntagInstanceProfile",
          "kms:CreateKey",
          "logs:CreateLogGroup",
          "logs:DeleteLogGroup",
          "logs:DescribeLogGroups",
          "logs:ListTagsLogGroup",
          "logs:PutRetentionPolicy",
          "logs:TagLogGroup",
          "logs:TagResource",
          "logs:UntagLogGroup",
          "logs:UntagResource",
          "networkmanager:Describe*",
          "networkmanager:Get*",
          "networkmanager:List*",
          "s3:CreateBucket",
          "s3:DeleteBucket",
          "s3:DeleteBucketPolicy",
          "s3:DeleteBucketWebsite",
          "s3:DeleteObject",
          "s3:DeleteObjectVersion",
          "s3:DeleteObjectVersionTagging",
          "s3:GetAccelerateConfiguration",
          "s3:GetBucketAcl",
          "s3:GetBucketCORS",
          "s3:GetBucketLocation",
          "s3:GetBucketLogging",
          "s3:GetBucketObjectLockConfiguration",
          "s3:GetBucketOwnershipControls",
          "s3:GetBucketPolicy",
          "s3:GetBucketPolicyStatus",
          "s3:GetBucketPublicAccessBlock",
          "s3:GetBucketRequestPayment",
          "s3:GetBucketTagging",
          "s3:GetBucketVersioning",
          "s3:GetBucketWebsite",
          "s3:GetEncryptionConfiguration",
          "s3:GetLifecycleConfiguration",
          "s3:GetObject",
          "s3:GetObjectAcl",
          "s3:GetObjectVersion",
          "s3:GetObjectVersionAcl",
          "s3:GetObjectVersionAttributes",
          "s3:GetObjectVersionForReplication",
          "s3:GetObjectVersionTagging",
          "s3:GetObjectVersionTorrent",
          "s3:GetReplicationConfiguration",
          "s3:ListAllMyBuckets",
          "s3:ListBucket",
          "s3:ListBucketVersions",
          "s3:PutAccelerateConfiguration",
          "s3:PutBucketAcl",
          "s3:PutBucketCORS",
          "s3:PutBucketLogging",
          "s3:PutBucketObjectLockConfiguration",
          "s3:PutBucketOwnershipControls",
          "s3:PutBucketPolicy",
          "s3:PutBucketPublicAccessBlock",
          "s3:PutBucketRequestPayment",
          "s3:PutBucketTagging",
          "s3:PutBucketVersioning",
          "s3:PutBucketWebsite",
          "s3:PutEncryptionConfiguration",
          "s3:PutLifecycleConfiguration",
          "s3:PutObject",
          "s3:PutObjectAcl",
          "s3:PutObjectVersionAcl",
          "s3:PutObjectVersionTagging",
          "sts:GetCallerIdentity",
        ]
        Effect   = "Allow"
        Resource = "*"
        Sid      = "VisualEditor3"
      },
      {
        Action   = "secretsmanager:*"
        Effect   = "Allow"
        Resource = "arn:aws:secretsmanager:*:*:secret:*"
        Sid      = "VisualEditor4"
      },
    ]
    Version   = "2012-10-17"
  })
  tags        = {}
  tags_all    = {}
}

resource "aws_iam_user_policy_attachment" "test-attach" {
  user       = aws_iam_user.aac_iam.name
  policy_arn = aws_iam_policy.aac_mgmt_policy.arn
}
