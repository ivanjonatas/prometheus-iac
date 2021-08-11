output "id_instance" {
    value = aws_instance.web.*.id
}

output "ip_instance" {
    value = aws_instance.web.*.public_ip
}

// resource "local_file" "AnsibleInventory" {
//  content = templatefile("inventory.tmpl",
//  {
//   private-dns = aws_instance.web.*.private_dns,
//   private-ip = aws_instance.web.*.private_ip,
//   private-id = aws_instance.web.*.id
//  }
//  )
//  filename = "inventory"
// }