resource "aws_iam_role" "vpc_flow_logs" {
  name               = "vpc-flow-logs-role"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "vpc-flow-logs.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}

resource "aws_iam_policy" "vpc_flow_logs" {
  name        = "vpc-flow-logs-policy"
  description = "IAM policy for VPC flow logs"
  policy      = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "logs:DescribeLogGroups",
        "logs:DescribeLogStreams",
        "ec2:CreateNetworkInterfacePermission"
      ],
      "Resource": "*"
    }
  ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "vpc_flow_logs" {
  policy_arn = aws_iam_policy.vpc_flow_logs.arn
  role       = aws_iam_role.vpc_flow_logs.name
}

resource "aws_flow_log" "vpc_flow_logs" {
#   name              = "vpc-flow-logs"
  traffic_type      = "ALL"
  log_destination   = aws_cloudwatch_log_group.vpc_flow_logs.arn
  log_format        = "$${version} $${account-id} $${interface-id} $${srcaddr} $${dstaddr} $${srcport} $${dstport} $${protocol} $${packets} $${bytes} $${start} $${end} $${action} $${log-status}"
  vpc_id            = aws_vpc.aacvpc.id
  iam_role_arn      = aws_iam_role.vpc_flow_logs.arn
  depends_on        = [aws_cloudwatch_log_group.vpc_flow_logs]
}

resource "aws_cloudwatch_log_group" "vpc_flow_logs" {
  name = "/aws/vpc-flow-logs"
}
