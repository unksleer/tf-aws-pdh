resource "aws_subnet" "aacvp_cprivatea_a30_bf376" {
  vpc_id            = aws_vpc.aacvpc.id
  availability_zone = var.a_za
  cidr_block        = var.privatea
  tags = {
    Name = join("", ["private ", var.a_za])
  }
}

resource "aws_route_table" "aacvp_crtbprivatea_e1_aea45_a" {
  vpc_id = aws_vpc.aacvpc.id
  tags = {
    Name = "RT_PRIVATE_A"
  }
}

resource "aws_route" "aacvp_crtbprivateaprivatea_route_e1_d0_acb3" {
  route_table_id         = aws_route_table.aacvp_crtbprivatea_e1_aea45_a.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.aac_publica_nat.id
}

resource "aws_route_table_association" "aacvp_cprivatea_rta5826794_c" {
  route_table_id = aws_route_table.aacvp_crtbprivatea_e1_aea45_a.id
  subnet_id      = aws_subnet.aacvp_cprivatea_a30_bf376.id
}

resource "aws_subnet" "aacvp_cprivateb67_de6095" {
  vpc_id            = aws_vpc.aacvpc.id
  availability_zone = var.a_zb
  cidr_block        = var.privateb
  tags = {
    Name = join("", ["private ", var.a_zb])
  }
}

resource "aws_route_table" "aacvp_crtbprivateb687_f9_ba9" {
  vpc_id = aws_vpc.aacvpc.id
  tags = {
    Name = "RT_PRIVATE_B"
  }
}

resource "aws_route" "aacvp_crtbprivatebprivateb_route3_f3628_a7" {
  route_table_id         = aws_route_table.aacvp_crtbprivateb687_f9_ba9.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.aac_publicb_nat.id
}

resource "aws_route_table_association" "aacvp_cprivateb_rta29_d74_f06" {
  route_table_id = aws_route_table.aacvp_crtbprivateb687_f9_ba9.id
  subnet_id      = aws_subnet.aacvp_cprivateb67_de6095.id
}

resource "aws_subnet" "aacvp_cprivatec82268327" {
  vpc_id            = aws_vpc.aacvpc.id
  availability_zone = var.a_zc
  cidr_block        = var.privatec
  tags = {
    Name = join("", ["private ", var.a_zc])
  }
}

resource "aws_route_table" "aacvp_crtbprivatec_d731_c2_cb" {
  vpc_id = aws_vpc.aacvpc.id
  tags = {
    Key   = "Name"
    Value = "RT_PRIVATE_C"
  }
}

resource "aws_route" "aacvp_crtbprivatecprivatec_route6142_bc28" {
  route_table_id         = aws_route_table.aacvp_crtbprivatec_d731_c2_cb.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.aac_publicc_nat.id
}

resource "aws_route_table_association" "aacvp_cprivatec_rta74225_f9_b" {
  route_table_id = aws_route_table.aacvp_crtbprivatec_d731_c2_cb.id
  subnet_id      = aws_subnet.aacvp_cprivatec82268327.id
}
