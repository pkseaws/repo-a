/* data "aws_availability_zones" "available" {
      state = "available"
    }

 resource "aws_vpc" "vpc-new" {
      cidr_block = "10.0.0.0/16"
      
    }

resource "aws_subnet" "public" {
      for_each          = data.aws_availability_zones.available.names
      vpc_id            = aws_vpc.vpc-new.id
      availability_zone = each.value
      cidr_block        = cidrsubnet(aws_vpc.vpc-new.cidr_block, 6, index(data.aws_availability_zones.available.names, each.value))
      
    }

*/
