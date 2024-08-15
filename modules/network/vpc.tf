# Subnet 2 CIDRs
resource "aws_vpc" "aacvpc" {
  cidr_block = "10.10.0.0/21"
  tags = {
    tag-key   = "AAC_VPC"
    tag-value = "10.10.0.0/21"
  }
}

resource "aws_vpc_ipv4_cidr_block_association" "secondary_cidr" {
  vpc_id     = aws_vpc.aacvpc.id
  cidr_block = var.secondary_vpc_cidr
}
