 variable "inst_ami"{
     type = string
 }

variable "inst_key"{
    type = string
}
variable "inst_type"{
    type = string
    default = "t2.micro"
}

variable "inst_subnet"{
    type = string
}

variable "inst_sg" {
    type = list(string)
}

variable "inst_count" {
}
