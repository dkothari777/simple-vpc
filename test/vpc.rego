package main

deny[msg] {
    not input.resource.aws_vpc.this
    msg = "Define VPC resource"
}

deny[msg] {
    not contains(input.resource.aws_vpc.this.cidr_block, "var.vpc_cidr_block")
    msg = "VPC cidr_block should be defined as var.vpc_cidr_block"
}
