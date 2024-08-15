variable eksnodea {
  description = "IP range in CIDR notation."
  type = string
  default = "10.64.0.0/21"
}

variable eksnodeb {
  description = "IP range in CIDR notation."
  type = string
  default = "10.64.8.0/21"
}

variable eksnodec {
  description = "IP range in CIDR notation."
  type = string
  default = "10.64.16.0/21"
}

variable ekscontrola {
  description = "IP range in CIDR notation."
  type = string
  default = "10.10.5.96/27"
}

variable ekscontrolb {
  description = "IP range in CIDR notation."
  type = string
  default = "10.10.5.128/27"
}

variable ekscontrolc {
  description = "IP range in CIDR notation."
  type = string
  default = "10.10.5.160/27"
}

variable optiona {
  description = "IP range in CIDR notation."
  type = string
  default = "10.10.4.0/26"
}

variable optionb {
  description = "IP range in CIDR notation."
  type = string
  default = "10.10.4.64/26"
}

variable optionc {
  description = "IP range in CIDR notation."
  type = string
  default = "10.10.4.128/26"
}

variable privatea {
  description = "IP range in CIDR notation."
  type = string
  default = "10.10.0.0/24"
}

variable privateb {
  description = "IP range in CIDR notation."
  type = string
  default = "10.10.1.0/24"
}

variable privatec {
  description = "IP range in CIDR notation."
  type = string
  default = "10.10.2.0/24"
}

variable publica {
  description = "IP range in CIDR notation."
  type = string
  default = "10.10.5.0/27"
}

variable publicb {
  description = "IP range in CIDR notation."
  type = string
  default = "10.10.5.32/27"
}

variable publicc {
  description = "IP range in CIDR notation."
  type = string
  default = "10.10.5.64/27"
}

variable a_za {
  description = "Availability Zone A"
  type = string
  default = "us-east-1a"
}

variable a_zb {
  description = "Availability Zone B"
  type = string
  default = "us-east-1b"
}

variable a_zc {
  description = "Availability Zone C"
  type = string
  default = "us-east-1c"
}

variable secondary_vpc_cidr {
  description = "IP range in CIDR notation"
  type = string
  default = "10.64.0.0/18"
}

variable "vpc-s3" {
  default = "vpc-aac-flow-log" # Create a bucket for your flow logs. modify this name to match your bucket name that will contain your logs
  description = "S3 bucket for VPC Flow Logs"
}