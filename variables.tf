variable "vpc_cidr" {
   default = "10.0.0.0/16"
}
  

  variable "enable_dns_hostnames" {
   default = true
}

variable "common_tags"{
  default = {}

}  


variable "vpc_tags"{
  default = {}

}  

variable "project_name"{

}  

variable "environment_name"{

}  

variable "igw_tags"{
  default = {}

}  

variable "public_subnets_cidr"{
    type = list
  validation {
    condition = length(var.public_subnets_cidr) == 2
    error_message = "Please give 2 public valid subnet CIDR"
  } 

}

variable "public_subnets_tags"{
    default = {}
  
} 

variable "private_subnets_cidr"{
    type = list
  validation {
    condition = length(var.private_subnets_cidr) == 2
    error_message = "Please give 2 private valid subnet CIDR"
  } 

}

variable "private_subnets_tags"{
    default = {}
  
} 