output "public_ip" {
    value = aws_instance.aws-iac.public_ip
}

output "private_ip" {
    value = aws_instance.aws-iac.private_ip
}

output "instance_id" {
    value = aws_instance.aws-iac.id
}


