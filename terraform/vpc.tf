resource "aws_vpc" "vpc-cicd" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "VPC-CICD"
  }
}

resource "aws_subnet" "cicd_sub" {
  vpc_id     = aws_vpc.vpc-cicd.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "cicd_sub1"
  }
}
