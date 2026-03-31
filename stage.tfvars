vpc_name                = "stage-tf_vpc"
vpc_cidr                = "10.20.0.0/16"
igw_name                = "stage-tf_igw"
RT_name                 = "stage-public_RT_tf"
pub_RT_route1_cidr      = "0.0.0.0/0"

subnet_name             = "stage-public-subnet"
subnet_az               = "us-east-1b"
subnet_cidr_block       = "10.20.1.0/24"

sg_name                 = "stage-tf_sg_allow_all"
sg_inbound_cidr_blocks  = ["0.0.0.0/0"]
sg_outbound_cidr_blocks = ["0.0.0.0/0"]

ec2-name                = "stage-server-1"
ec2_az                  = "us-east-1b"
ec2_keypair_name        = "sujanreddyNVKeypair"