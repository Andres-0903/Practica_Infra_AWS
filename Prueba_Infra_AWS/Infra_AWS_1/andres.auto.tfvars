virginia_cidr = "10.10.0.0/16"
subnets       = ["10.10.0.0/24", "10.10.1.0/24"]
tags = {
  "name"    = "prueba"
  "env"     = "Dev"
  "owner"   = "Andres"
  "Iac"     = "terraform"
  "version" = "1.12.0"
  "cloud"   = "AWS"
  "Project" = "dragon"
  "region"  = "Virginia"
}

sg_ingress_cdir = "0.0.0.0/0"

ec2_specs = {
  "ami"           = "ami-0150ccaf51ab55a51"
  "instance_type" = "t2.micro"
}

enable_monitoring = false

ingress_port_list = [22, 80, 443]

