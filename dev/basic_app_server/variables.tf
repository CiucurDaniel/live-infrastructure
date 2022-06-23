variable "ami_id" {
  default = "ami-0a244485e2e4ffd03"
  description = "The ami you want to use for the EC2 instance"
}

variable "instance_type" {
  default = "t2.micro"
  description = "The EC2 instance type you want to use: t2.micro, t2.medium"
}

variable "environment" {
  description = "This variable should hold the environment currently being configured (dev, prod)"
  default = "dev"
}


variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default = 8080
}

variable "company" {
  description = "Company name"
  default = "Logamic"
}