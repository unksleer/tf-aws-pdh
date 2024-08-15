# IGW
resource "aws_internet_gateway" "aac_internet_gateway" {
  vpc_id = aws_vpc.aacvpc.id
  tags = {
    Name = "aac_internet_gateway"
  }
}
