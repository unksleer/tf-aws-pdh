resource "aws_subnet" "aacvp_cekscontrola2_a5_a8088" {
  vpc_id            = aws_vpc.aacvpc.id
  availability_zone = var.a_za
  cidr_block        = var.ekscontrola
  tags = {
    NAME = join("", ["eks_control ", var.a_za])
  }
}

resource "aws_route_table" "aacvp_crtbekscontrola4_db5_b901" {
  vpc_id = aws_vpc.aacvpc.id
  tags = {
    Name = "rt_eks_control_a"
  }
}

resource "aws_route" "aacvp_crtbekscontrolaekscontrola_route3_a1_ad792" {
  route_table_id         = aws_route_table.aacvp_crtbekscontrola4_db5_b901.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.aac_publica_nat.id
}

resource "aws_route_table_association" "aacvp_cekscontrola_rta32_e19_d49" {
  route_table_id = aws_route_table.aacvp_crtbekscontrola4_db5_b901.id
  subnet_id      = aws_subnet.aacvp_cekscontrola2_a5_a8088.id
}

resource "aws_subnet" "aacvp_cekscontrolb93_b79_edf" {
  vpc_id            = aws_vpc.aacvpc.id
  availability_zone = var.a_zb
  cidr_block        = var.ekscontrolb
  tags = {
    Name = join("", ["eks_control ", var.a_zb])
  }
}

resource "aws_route_table" "aacvp_crtbekscontrolb_acfceb41" {
  vpc_id = aws_vpc.aacvpc.id
  tags = {
    Name = "RT_EKS_CONTROL_B"
  }
}

resource "aws_route" "aacvp_crtbekscontrolbekscontrolb_route02592_f55" {
  route_table_id         = aws_route_table.aacvp_crtbekscontrolb_acfceb41.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.aac_publicb_nat.id
}

resource "aws_route_table_association" "aacvp_cekscontrolb_rta505_a9_f94" {
  route_table_id = aws_route_table.aacvp_crtbekscontrolb_acfceb41.id
  subnet_id      = aws_subnet.aacvp_cekscontrolb93_b79_edf.id
}

resource "aws_subnet" "aacvp_cekscontrolc8_a6_e0_c81" {
  vpc_id            = aws_vpc.aacvpc.id
  availability_zone = var.a_zc
  cidr_block        = var.ekscontrolc
  tags = {
    Name = join("", ["eks_control ", var.a_zc])
  }
}

resource "aws_route_table" "aacvp_crtbekscontrolc5_a68_a821" {
  vpc_id = aws_vpc.aacvpc.id
  tags = {
    Name = "RT_EKS_CONTROL_C"
  }
}

resource "aws_route" "aacvp_crtbekscontrolcekscontrolc_route4_fa29_d0_a" {
  route_table_id         = aws_route_table.aacvp_crtbekscontrolc5_a68_a821.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.aac_publicc_nat.id
}

resource "aws_route_table_association" "aacvp_cekscontrolc_rtabdedc1_e1" {
  route_table_id = aws_route_table.aacvp_crtbekscontrolc5_a68_a821.id
  subnet_id      = aws_subnet.aacvp_cekscontrolc8_a6_e0_c81.id
}
