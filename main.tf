# Create VPC
resource "aws_vpc" "ranjith" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "ranjith-vpc"
  }
}

# Create subnets
resource "aws_subnet" "web-pub-1a" {
  vpc_id     = aws_vpc.ranjith.id
  cidr_block = "10.0.1.0/24"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = true

   tags = {
    Name = "web-pub"
  }
}

# Create internet gateway
resource "aws_internet_gateway" "my_igw" {
  vpc_id = aws_vpc.ranjith.id
   tags = {
    Name = "igw"
  }
}


# Create routing table
resource "aws_route_table" "my_route_table" {
  vpc_id = aws_vpc.ranjith.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my_igw.id
  }
}

# Associate subnet with routing table
resource "aws_route_table_association" "my_subnet_association" {
  subnet_id      = aws_subnet.web-pub-1a.id
  route_table_id = aws_route_table.my_route_table.id
}






