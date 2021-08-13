[servers]
%{ for index, dns in private-dns ~}
${private-ip[index]} # ${private-id[index]}
%{ endfor ~}


[all:vars]
ansible_ssh_private_key_file = /path/****.pem
ansible_ssh_user = ubuntu
