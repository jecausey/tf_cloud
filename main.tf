provider "aws" {
    region = "us-east-1"
}

variable "aws_access_key_id" {
    type = sting
}
variable "aws_secret_access_key" {
    type = string
}

access_key = "var.aws_access_key_id"
secret_key = "var.aws_secret_access_key"

#variable "vpcname" {
#    type = string
#    description = "Enter VPC Name: "
#}

resource "aws_vpc" "jcvpc" {
    cidr_block = "192.168.0.0/24"
    tags = {
        name = "jhcvpc01"
    }
}

output "jcout" {
    value = aws_vpc.jcvpc
}