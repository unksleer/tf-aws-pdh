resource "aws_subnet" "aacvp_coptiona4437044_b" {
  vpc_id            = aws_vpc.aacvpc.id
  availability_zone = var.a_za
  cidr_block        = var.optiona
  tags = {
    Name = join("", ["option ", var.a_za])
  }
}

resource "aws_route_table" "aacvp_crtboptiona4_bc1_f514" {
  vpc_id = aws_vpc.aacvpc.id
  tags = {
    Key   = "Name"
    Value = "RT_OPTION_A"
  }
}

resource "aws_route_table_association" "aacvp_coptiona_rtac226_f9_a4" {
  route_table_id = aws_route_table.aacvp_crtboptiona4_bc1_f514.id
  subnet_id      = aws_subnet.aacvp_coptiona4437044_b.id
}

resource "aws_subnet" "aacvp_coptionb0_e1_e3935" {
  vpc_id            = aws_vpc.aacvpc.id
  availability_zone = var.a_zb
  cidr_block        = var.optionb
  tags = {
    Name = join("", ["option ", var.a_zb])
  }
}

resource "aws_route_table" "aacvp_crtboptionb418_bff48" {
  vpc_id = aws_vpc.aacvpc.id
  tags = {
    Value = "RT_OPTION_B"
  }
}

resource "aws_route" "aacvp_crtbekscontrolbekscontrolb_route3_f3628_a7" {
  route_table_id         = aws_route_table.aacvp_crtboptionb418_bff48.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.aac_publicb_nat.id
}

resource "aws_route_table_association" "aacvp_coptionb_rta914_d99_b9" {
  route_table_id = aws_route_table.aacvp_crtboptionb418_bff48.id
  subnet_id      = aws_subnet.aacvp_coptionb0_e1_e3935.id
}

resource "aws_subnet" "aacvp_coptionc1_d8_ba052" {
  vpc_id            = aws_vpc.aacvpc.id
  availability_zone = var.a_zc
  cidr_block        = var.optionc
  tags = {
    NAME = join("", ["option ", var.a_zc])
  }
}

resource "aws_route_table" "aacvp_crtboptionc_d89_acdab" {
  vpc_id = aws_vpc.aacvpc.id
  tags = {
    Key   = "Name"
    Value = "RT_OPTION_C"
  }
}

resource "aws_route_table_association" "aacvp_coptionc_rta0_aed5722" {
  route_table_id = aws_route_table.aacvp_crtboptionc_d89_acdab.id
  subnet_id      = aws_subnet.aacvp_coptionc1_d8_ba052.id
}
