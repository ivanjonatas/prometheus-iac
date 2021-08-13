resource "local_file" "AnsibleInventory" {
    content = templatefile("./inventory.tpl",
        {
        private-dns = aws_instance.web.*.private_dns,
        private-ip = aws_instance.web.*.private_ip,
        private-id = aws_instance.web.*.id
        }
    )
    filename = "inventory"
}