vpc_name                = "dev-tf_vpc"
vpc_cidr                = "10.10.0.0/16"
igw_name                = "dev-tf_igw"
RT_name                 = "dev-public_RT_tf"
pub_RT_route1_cidr      = "0.0.0.0/0"

subnet_name             = "dev-public-subnet"
subnet_az               = "us-east-1a"
subnet_cidr_block       = "10.10.1.0/24"

sg_name                 = "dev-tf_sg_allow_all"
sg_inbound_cidr_blocks  = ["0.0.0.0/0"]
sg_outbound_cidr_blocks = ["0.0.0.0/0"]

ec2-name                = "dev-server-1"
ec2_az                  = "us-east-1a"
ec2_keypair_name        = "sujanreddyNVKeypair"