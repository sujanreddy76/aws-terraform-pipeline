vpc_name                = "prod-tf_vpc"
vpc_cidr                = "10.30.0.0/16"
igw_name                = "prod-tf_igw"
RT_name                 = "prod-public_RT_tf"
pub_RT_route1_cidr      = "0.0.0.0/0"

subnet_name             = "prod-public-subnet"
subnet_az               = "us-east-1c"
subnet_cidr_block       = "10.30.1.0/24"

sg_name                 = "prod-tf_sg_allow_all"
sg_inbound_cidr_blocks  = ["0.0.0.0/0"]
sg_outbound_cidr_blocks = ["0.0.0.0/0"]

ec2-name                = "prod-server-1"
ec2_az                  = "us-east-1c"
ec2_keypair_name        = "sujanreddyNVKeypair"