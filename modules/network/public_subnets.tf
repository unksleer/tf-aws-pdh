# PUBLIC SUBNET A
resource "aws_subnet" "aac_public_a" {
  vpc_id            = aws_vpc.aacvpc.id
  availability_zone = var.a_za
  cidr_block        = var.publica
  tags = {
    Name   = "aac_public_a"
    SUBNET = join("", ["public ", var.a_za])
  }
}

resource "aws_eip" "acc_public_a_eip" {
  network_border_group = data.aws_region.current.name
  tags = {
    Name = "acc_public_a_eip"
  }
}

resource "aws_route_table" "aac_rt_publica" {
  vpc_id = aws_vpc.aacvpc.id
  tags = {
    Name = "aac_rt_publica"
  }
}

resource "aws_route" "aac_rt_public_a" {
  route_table_id         = aws_route_table.aac_rt_publica.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.aac_internet_gateway.id
}

resource "aws_route_table_association" "aacvp_cpublica_rta47548_f3_d" {
  route_table_id = aws_route_table.aac_rt_publica.id
  subnet_id      = aws_subnet.aac_public_a.id
}

resource "aws_nat_gateway" "aac_publica_nat" {
  subnet_id      = aws_subnet.aac_public_a.id
  allocation_id  = aws_eip.acc_public_a_eip.id
  tags = {
    Name   = "aac_publica_nat"
    PUB-GW = join("", ["aac_publica_nat", var.a_za])
  }
}

# Public Subnet B
resource "aws_subnet" "aac_public_subnet_b" {
  vpc_id            = aws_vpc.aacvpc.id
  availability_zone = var.a_zb
  cidr_block        = var.publicb
  tags = {
    Name   = "aac_public_subnet_b"
    SUBNET = join("", ["public ", var.a_za])
  }
}

resource "aws_eip" "aac_public_b_eip" {
  network_border_group = data.aws_region.current.name
  tags = {
    Name = "aac_public_b_eip"
  }
}

resource "aws_route_table" "aac_rt_public_b" {
  vpc_id = aws_vpc.aacvpc.id
  tags = {
    Name = "aac_rt_public_b"
  }
}

resource "aws_route" "aacvp_crtbpublicbpublicb_route56483782" {
  route_table_id         = aws_route_table.aac_rt_public_b.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.aac_internet_gateway.id
}

resource "aws_route_table_association" "aacvp_cpublicb_rtafcf64_cf4" {
  route_table_id = aws_route_table.aac_rt_public_b.id
  subnet_id      = aws_subnet.aac_public_subnet_b.id
}

resource "aws_nat_gateway" "aac_publicb_nat" {
  subnet_id      = aws_subnet.aac_public_subnet_b.id
  allocation_id  = aws_eip.aac_public_b_eip.id
  tags = {
    Name   = "aac_publicb_nat"
    PUB-GW = join("", ["aac_publicb_nat", var.a_zb])
  }
}

# Public Subnet C
resource "aws_subnet" "aac_public_subnet_c" {
  vpc_id            = aws_vpc.aacvpc.id
  availability_zone = var.a_zc
  cidr_block        = var.publicc
  tags = {
    Name   = "aac_public_subnet_c"
    Subnet = join("", ["public ", var.a_zc])
  }
}

resource "aws_eip" "aac_public_c_eip" {
  network_border_group = data.aws_region.current.name
  tags = {
    Name = "public_eip_c"
  }
}

resource "aws_route_table" "aac_rt_public_c" {
  vpc_id = aws_vpc.aacvpc.id
  tags = {
    Name = "public_rt_c"
  }
}

resource "aws_route" "aacvp_crtbpubliccpublicc_route_e8_f2_f333" {
  route_table_id         = aws_route_table.aac_rt_public_c.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.aac_internet_gateway.id
}

resource "aws_route_table_association" "aacvp_cpublicc_rta38105235" {
  route_table_id = aws_route_table.aac_rt_public_c.id
  subnet_id      = aws_subnet.aac_public_subnet_c.id
}

resource "aws_nat_gateway" "aac_publicc_nat" {
  subnet_id      = aws_subnet.aac_public_subnet_c.id
  allocation_id  = aws_eip.aac_public_c_eip.id
  tags = {
    Name = join("", ["aac_nat_gw_c ", var.a_zc])
  }
}
