resource "aws_vpc" "main" {     # vpc resource
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {        # given name tag tfvpc
    Name = "tfvpc"
  }
}

resource "aws_subnet" "public" {    # public subnet
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.pub_subnet_cidr
  availability_zone = "us-east-1a"

  tags = {    # name tag public
    Name = "public"
  }
}


resource "aws_subnet" "private" {     # private subnet
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.Pri_subnet_cidr
  availability_zone = "us-east-1a"

  tags = {      # name tag private
    Name = "private"
  }
}