data "aws_vpcs" "vpc_default" {
  tags = {
    Name = "vpc-default"
  }
}

data "aws_subnet_ids" "subnet_public" {
    // vpc_id = "vpc-*****"
    pvc_id = aws_vpcs.vpc_default.id

  filter {
    name   = "tag:Name"
    values = ["us-east-1a"]
  }
}

data "aws_security_group" "selected" {
  vpc_id = "vpc-b612b5cb"

  filter {
    name   = "tag:Name"
    values = ["Terraform"]
  }
}

data "aws_ec2_instance_type" "type" {
  instance_type = "t2.micro"
}

data "aws_ami" "ubunto20" {
    most_recent = true

    filter {
        name   = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
    }

    filter {
        name = "virtualization-type"
        values = ["hvm"]
    }

    owners = ["099720109477"]
}