output "private_ips" {
description = "List of private IP addresses assigned to the DB and APP instances"
value       = [aws_instance.k8-workers.*.private_ip,
               aws_instance.k8-control-plane.*.private_ip,
               aws_instance.Ansible-server.*.private_ip]
}
