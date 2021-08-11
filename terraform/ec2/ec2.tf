resource "aws_instance" "web"{
    count           = var.inst_count
    ami             = var.inst_ami
    instance_type   = var.inst_type
    key_name        = var.inst_key
    subnet_id       = var.inst_subnet
    security_groups = var.inst_sg

    tags = {
      Name = "Instancia-terraform"
    }
    root_block_device {
        volume_type           = "gp2"
        volume_size           = "8"
        delete_on_termination = "true"
    }

}