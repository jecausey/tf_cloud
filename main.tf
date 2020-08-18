provider "aws" {
    region = "us-east-1"
}

#variable "vpcname" {
#    type = string
#    description = "Enter VPC Name: "
#}

resource "aws_vpc" "jcvpc" {
    cidr_block = "192.168.0.0/24"
    tags = {
        name = jhcvpc01
    }
}

output "jcout" {
    value = aws_vpc.jcvpc
}