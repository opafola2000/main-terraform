locals {
    device_name = "/dev/xvda"
    root_device_name = "/dev/xvda"
    selected_ami = var.ami_type  == "ubuntu" ? var.ubuntu_ami_id : var.amz_ami_id
  }
