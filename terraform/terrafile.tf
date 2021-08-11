module "instance" {
    source      = "./ec2"
    inst_count  = 2
    inst_ami    = data.aws_ami.ubunto20.id
    inst_type   = data.aws_ec2_instance_type.type.instance_type
    inst_key    = "macos"
    inst_sg     = [data.aws_security_group.selected.id]
    for_each    = data.aws_subnet_ids.subnet_public.ids
    inst_subnet = each.value
}