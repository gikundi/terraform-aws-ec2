variable "location" {
    default = "us-east-1"
  
}

variable "instance_ami" {
    description = "The ID of the AMI to use for the instance"
    default = "ami-053b0d53c279acc90" # Default to your desired AMI ID
  
}

variable "instance_type" {
  description = "The instance type for the EC2 instance"
  default     = "t2.micro"
}

variable "ssh_cidr_blocks" {
  description = "CIDR blocks allowed for SSH traffic"
  type        = list(string)
  default     = ["0.0.0.0/0"]  # Default to allow SSH from any source
}

variable "instance_tags" {
  description = "Tags to apply to the EC2 instance"
  type        = map(string)
  default     = {
    Name = "iac-instance"
    env  = "development"
  }
}

variable "key_name" {
  description = "The name of the SSH key pair"
  default     = "minikubeserver"
}
