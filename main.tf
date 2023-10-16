
resource "aws_security_group" "ssh" {
  name        = "iac-sg"
  description = "Allow SSH inbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.ssh_cidr_blocks
  }
}

resource "aws_instance" "aws-iac" {
  ami           = var.instance_ami
  instance_type =  var.instance_type

  tags = var.instance_tags

  security_groups = [aws_security_group.ssh.name]

  key_name = var.key_name  # SSH key pair name
}
