# create VPC
module "vpc" {
  source       = "../modules/vpc"
  project_name = var.project_name
  env          = var.env
  type         = var.type
}

# create security group
module "security_groups" {
  source        = "../modules/security-groups"
  vpc_id        = module.vpc.vpc_id
  env           = var.env
  type          = var.type
}

# create ec2 instance 
module "ec2" {
    spurce = "../modules/ec2"
    private_subnet_1 =  module.vpc.private_subnet_az1_id
    private_subnet_2 =  module.vpc.private_subnet_az2_id
    db_security_group = module.db_security_group_id
    web_security_group = module.web_security_group_id
    public_subnet_1 = module.vpc.public_subnet_az1_id
    public_subnet_2 = module.vpc.public_subnet_az2_id

}