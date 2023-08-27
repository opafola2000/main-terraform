variable "instancetype" {
  description = "This is to define the instance type to create"
  default = "t2.large"
  type    = string
}

variable "vpc_cidr" {
  description = "IP range address that vpc should have"
  default = ""
  type    = string
}

variable "pub_subnet_cidr" {
  description = "IP range address that public subnet should have"
  default = ""
  type    = string
}

variable "Pri_subnet_cidr" {
  description = "IP range address that private subnet should have"
  default = ""
  type    = string
}

variable "ami_id" {
  description = "This is define to create ami and this require ebs id"
  default = ""
  type    = string
}

variable "ami_id2" {
  description = "This is define to create ami and this require ebs id"
  type    = string
  default = ""
}

variable "instance_name" {
  description = "This is define give name to the instance(s) created"
  type = list(any)
}

variable "instance_name2" {
  description = "This is define give name to the second set of instance(s) created"
  type = list(any)
}

variable "instance_number" {
  description = "This is to set condition to determine number of instances to be deployed"
  type    = bool
  default = true
}

variable "image_type" {
  description = "This is to set condition to choose ami type for the instances"
  type    = bool
  default = true
}

variable "amz_ami_id" {
  description = "This is to specify amazon-ami for usage"
  type        = string
  default = "ami-09538990a0c4fe9be"
}

variable "ubuntu_ami_id" {
  description = "This is to specify ubuntu-ami for usage"
  type        = string
  default = "ami-053b0d53c279acc90"
}

variable "ami_type" {
  type    = bool
}