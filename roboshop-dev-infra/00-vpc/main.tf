module "vpc" {
    #source = "git::https://github.com/daws-86s/terraform-aws-vpc.git?ref=main"
    # VPC
    #source = "git::https://github.com/kirangudida/terraform-devops/terraform-aws-vpc.git?ref=main"
    #source = "git::https://github.com/kirangudida/terraform-devops.git?ref=main//terraform-aws-vpc"
    source = "../../terraform-aws-vpc"
    vpc_cidr = var.vpc_cidr
    project_name = var.project_name
    environment = var.environment
    vpc_tags = var.vpc_tags

    # public subnets
    public_subnet_cidrs = var.public_subnet_cidrs

    # private subnets
    private_subnet_cidrs = var.private_subnet_cidrs

    # database subnets
    database_subnet_cidrs = var.database_subnet_cidrs

    is_peering_required = true
}