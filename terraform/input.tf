
variable "ami_id" {
type        = string
description = "ami for ec2."
default     = "ami-0d1ddd83282187d18"

}

variable "instance_type" {
type        = string
description = "instant for ec2."
default     = "t3.micro"

}

variable "username" {
type        = string
description = "username for db."
default     = "Gklward"

}

variable "password" {
type        = string
description = "password for db."
default     = "123456789av"

}