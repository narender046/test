variable "region" {
  type = string
  default = "us-east-1"
}

variable "ami" {
    type = string
    default = "ami-0b93ce03dcbcb10f6"
}

variable "instance_type" {
    type = string
    default = "t3.medium"
}