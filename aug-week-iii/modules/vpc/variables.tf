variable "name" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "az_list" {
  type = list(string)
}

variable "private_subnet_list" {
  type = list(string)
}

variable "public_subnet_list" {
  type = list(string)
}

variable "enable_nat_gateway" {
  type = bool
}

variable "env" {
  type = string
}

