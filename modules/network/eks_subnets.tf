# EKS Subnet A
resource "aws_subnet" "aac_eks_nodea_subnet" {
  vpc_id            = aws_vpc.aacvpc.id
  availability_zone = var.a_za
  cidr_block        = var.eksnodea
  tags = {
    Name   = "aac_eks_nodea_subnet"
    Subnet = join("", ["eks_node_a ", var.a_za])
  }
}

resource "aws_route_table" "aac_eks_main_nodea_rt" {
  vpc_id = aws_vpc.aacvpc.id
  tags = {
    Name = "eks-nodea-rt"
  }
}

resource "aws_route" "aacvp_crtbeksnodeaeksnodea_route5_c3_a064_b" {
  route_table_id         = aws_route_table.aac_eks_main_nodea_rt.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.aac_publica_nat.id
}

resource "aws_route_table_association" "aacvp_ceksnodea_rta63_a8061_a" {
  route_table_id = aws_route_table.aac_eks_main_nodea_rt.id
  subnet_id      = aws_subnet.aac_eks_nodea_subnet.id
}

# EKS Subnet B
resource "aws_subnet" "aac_eks_nodeb_subnet" {
  vpc_id            = aws_vpc.aacvpc.id
  availability_zone = var.a_zb
  cidr_block        = var.eksnodeb
  tags = {
    Name = join("", ["eks_node_a ", var.a_zb])
  }
}

resource "aws_route_table" "aacvp_crtbeksnodeb0_bc37139" {
  vpc_id = aws_vpc.aacvpc.id
  tags = {
    Name = "rt_eks_node_a"
  }
}

resource "aws_route" "aacvp_crtbeksnodebeksnodeb_route_c0_e89648" {
  route_table_id         = aws_route_table.aacvp_crtbeksnodeb0_bc37139.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.aac_publicb_nat.id
}

resource "aws_route_table_association" "aacvp_ceksnodeb_rta51_ac084_e" {
  route_table_id = aws_route_table.aacvp_crtbeksnodeb0_bc37139.id
  subnet_id      = aws_subnet.aac_eks_nodeb_subnet.id
}

# EKS Subnet C
resource "aws_subnet" "aac_eks_node_c_subnet" {
  vpc_id            = aws_vpc.aacvpc.id
  availability_zone = var.a_zc
  cidr_block        = var.eksnodec
  tags = {
    Name = join("", ["eks_node ", var.a_zc])
  }
}

resource "aws_route_table" "aacvp_crtbeksnodec_f6_a7324_b" {
  vpc_id = aws_vpc.aacvpc.id
  tags = {
    Name = "rt_eks_node_c"
  }
}

resource "aws_route" "aacvp_crtbeksnodeceksnodec_route27940_dba" {
  route_table_id         = aws_route_table.aacvp_crtbeksnodec_f6_a7324_b.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.aac_publicc_nat.id
}

resource "aws_route_table_association" "aacvp_ceksnodec_rta7_eaf41_bf" {
  route_table_id = aws_route_table.aacvp_crtbeksnodec_f6_a7324_b.id
  subnet_id      = aws_subnet.aac_eks_node_c_subnet.id
}
