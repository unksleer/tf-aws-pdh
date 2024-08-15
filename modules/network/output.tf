output "vpc_id" {
  value = aws_vpc.aacvpc.id
}

output "public_subnet_ids" {
  value = [
    aws_subnet.aac_public_a.id,
    aws_subnet.aac_public_subnet_b.id,
    aws_subnet.aac_public_subnet_c.id
  ]
}

output "private_subnet_ids" {
  value = [
    aws_subnet.aacvp_cprivatea_a30_bf376.id,
    aws_subnet.aacvp_cprivateb67_de6095.id,
    aws_subnet.aacvp_cprivatec82268327.id
  ]
}

output "option_subnet_ids" {
  value = [
    aws_subnet.aacvp_coptiona4437044_b.id,
    aws_subnet.aacvp_coptionb0_e1_e3935.id,
    aws_subnet.aacvp_coptionc1_d8_ba052.id
  ]
}

output "eks_subnet_ids" {
  value = [
    aws_subnet.aac_eks_nodea_subnet.id,
    aws_subnet.aac_eks_nodeb_subnet.id,
    aws_subnet.aac_eks_node_c_subnet.id
  ]
}

output "nat_gateway_ids" {
  value = [
    aws_nat_gateway.aac_publica_nat.id,
    aws_nat_gateway.aac_publicb_nat.id,
    aws_nat_gateway.aac_publicc_nat.id
  ]
}

output "internet_gateway_id" {
  value = aws_internet_gateway.aac_internet_gateway.id
}
