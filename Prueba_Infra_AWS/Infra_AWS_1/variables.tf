variable "virginia_cidr" {
  description = "CIDR Virginia"
  type        = string
}

# variable "public_subnet" {
#   description = "CIDR Public Subnet"
#   type        = string
# }

# variable "private_subnet" {
#   description = "CIDR Private Subnet"
#   type        = string
# }

variable "subnets" {
  description = "Lista de Subnets"
  type        = list(string)
}

variable "tags" {
  description = "Tags del proyecto"
  type        = map(string)
}

variable "sg_ingress_cdir" {
  description = "CIDR for ingress traffic"
  type        = string
}

variable "ec2_specs" {
  description = "Parametros de la Instancia"
  type        = map(string)

}
variable "ingress_port_list" {
  description = "lista de puertos"
  type        = list(number)
}


variable "instancias" {
  description = "Nombre de las instancias"
  type        = set(string)
  default     = ["apache", "Mysql"]
}

variable "enable_monitoring" {
  description = "Habilita el despliegue servidor monitoreo"
  type        = bool
}
