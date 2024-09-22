# -- variables.tf -- 

variable "aws_region" {
  type    = string
  default = "us-east-2"
}

variable "bucket_name_p" {
  type    = string
  default = "bull-media-p"
}

variable "bucket_name_f" {
  type    = string
  default = "bull-media-f"
}

variable "vpc_cidr_a" {
  default = "10.1.0.0/16"
}

variable "vpc_cidr_b" {
  default = "10.2.0.0/16"
}


