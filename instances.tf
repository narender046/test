resource "aws_instance" "k8-control-plane" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = "ansible"
    vpc_security_group_ids = [aws_security_group.k8_cluster_sg.id]
    tags = {
        Name ="k8-control-plane"
    }
}    

resource "aws_instance" "k8-workers" {
    ami = var.ami
    instance_type = var.instance_type
    count = 3
    vpc_security_group_ids = [aws_security_group.k8_cluster_sg.id]
    key_name = "ansible"
    tags = {
        Name = "k8-worker${count.index}"
    }
}

resource "aws_instance" "Ansible-server" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = "cluster"
    tags = {
        Name ="Ansible-server"
    }
} 