resource "aws_ami" "ubuntu" {
  name                = "ami-ubuntu"
  virtualization_type = "hvm"
  root_device_name    = local.root_device_name
  ebs_block_device {
    device_name = local.device_name
    snapshot_id = "snap-0fde0c6a236603910"
    volume_size = 8
  }
}

resource "aws_ami" "amazon" {
  name                = "ami-amazon"
  virtualization_type = "hvm"
  root_device_name    = local.root_device_name
  ebs_block_device {
    device_name = local.device_name
    snapshot_id = "snap-0fde0c6a236603910"
    volume_size = 8
  }
}


resource "aws_instance" "tformec2" {
  ami                         = var.image_type ? aws_ami.ubuntu.id : aws_ami.amazon.id
  //ami_type                    = local.selected_ami
  instance_type               = var.instancetype
  subnet_id                   = aws_subnet.private.id
  associate_public_ip_address = "true"
  key_name                    = "ssh-key-NVirg"
  count                       = var.instance_number ? 2 : 1
  tags = {
    Name = var.instance_name[count.index]
  }
}

resource "aws_instance" "tformec3" {
  ami                         = var.image_type ? aws_ami.ubuntu.id : aws_ami.amazon.id
  instance_type               = var.instancetype
  subnet_id                   = aws_subnet.public.id
  associate_public_ip_address = "true"
  key_name                    = "ssh-key-NVirg"
  vpc_security_group_ids      = [aws_security_group.tfsg.id]
  count                       = var.instance_number ? 4 : 2 ## if instance_number is true, =4, if false =2
  tags = {
    Name = var.instance_name2[count.index]
  }
}