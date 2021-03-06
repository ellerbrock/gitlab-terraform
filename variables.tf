variable "custodian" {
  type        = "string"
  default     = "Delivery Engineering"
}
variable "db_database" {
  type        = "string"
  default     = "gitlab_production"
}
variable "db_username" {
  type        = "string"
  default     = "gitlab"
}
variable "db_password" {
  type        = "string"
  default     = "password"
}
variable "db_port" {
  type        = "string"
  default     = "5432"
}
variable "redis_port" {
  type        = "string"
  default     = "6379"
}
variable "mount_point" {
  description = "Mountpoint for the efs filesystem"
  type        = "string"
  default     = "/gitlab-data"
}
variable "project" {
  type        = "string"
  default     = "gitlab"
}

variable "vpc_id" {
  type        = "string"
  default     = "vpc-01537b67"
}


variable "certificate_domain" {
  default = "*.cloudops.aconex.com"
}

variable "env" {
  type        = "string"
  default     = "production"
}

variable "lc_name" {
  default = "gitlab-lc"
}
## Gitab CE ami 9.0.2 release 21/4/2017
# Asia Pacific (Mumbai)	ami-9a4033f5
# EU (London)	ami-a0190dc4
# EU (Ireland)	ami-6f86b809
# Asia Pacific (Seoul)	ami-6b974505
# Asia Pacific (Tokyo)	ami-bbc7e0dc
# South America (Sao Paulo)	ami-4b593a27
# Canada (Central)	ami-c703bea3
# Asia Pacific (Singapore)	ami-48902f2b
# Asia Pacific (Sydney)	ami-c3919ea0
# EU (Frankfurt)	ami-6328f80c
# US East (N. Virginia)	ami-81991f97
# US East (Ohio)	ami-1dfade78
# US West (N. California)	ami-19461c79
# US West (Oregon)	ami-7c099e1c

variable "ami_id" {
  default = "ami-57662541"
  description = "Amzn AMI with omibus install"
}
variable "instance_type" {
  default = "t2.medium"
}
variable "key_name" {
  default = "gitlab-test"
}
variable "asg_name" {
  default = "gitlab-asg"
}
variable "asg_number_of_instances" {
  default = 1
}
variable "asg_minimum_number_of_instances" {
  default = 1
}
variable "health_check_type" {
  default = "EC2"
}
variable "availability_zones" {
  default = "us-east-1a,us-east-1b"
}
variable "data_subnet_list" {
  type        = "list"
  default     = ["subnet-4968252c", "subnet-26d2d80b"]
  description = "where the redis will be - needs a list"
}
variable "data_subnets" {
  type        = "string"
  default     = "subnet-4968252c,subnet-26d2d80b"
  description = "where the efs will be - needs a string should fix this"
}
variable "private_subnets" {
  default     = "subnet-73d0da5e,subnet-4e6a272b"
  description = "where the asg will be"
}
variable "dmz_subnet_list" {
  type        = "list"
  default     = ["subnet-2d652848", "subnet-43dcd66e"]
  description = "where the elb will be"
}
