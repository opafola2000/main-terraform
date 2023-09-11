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

variable "instance_type" {
  type = string
}

variable "bucket" {
  type = string
}

variable "token" {
  type = string
  default = "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"
}
