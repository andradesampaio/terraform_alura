variable "key_name" {
    type = string
    description = "Name key name"
    default = "terraform_aws"
}

variable "amis_aws" {
    type = map(string)
    description = "Map the amis"
    default = {
        "us-east-1" = "ami-041feb57c611358bd"
        "us-east-2" = "ami-024e6efaf93d85776"
    }
}

variable "cidrs_access_remote" {
    type = list(string)
    description = "List the cidrs allow"
    default = [ "179.110.33.36/32" ]
}