resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.main_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "Public-Route-Table"
  }
}

resource "aws_route_table_association" "rt_association" {
  subnet_id      = subnet-0540b1bb805beecbb
  route_table_id = rtb-0b5572fdd2fd18e6b
}
