resource "aws_subnet" "dev-subnet-public-1" {
    vpc_id = var.vpc_id
    cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch = "true" //it makes this a public subnet
    availability_zone = "eu-west-2a"
   
}