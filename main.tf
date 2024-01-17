resource "aws_ssm_parameter" "parameters" {
  count = length(var.parameters)
  name  = var.parameters[count.index].name
  value = var.parameters[count.index].value
  type      = "String"
  key_id = "7a96f332-25cc-4f74-8991-bfc6694ad974"
}


resource "aws_ssm_parameter" "passwords" {
  count = length(var.passwords)
  name  = var.passwords[count.index].name
  value = var.passwords[count.index].value
  type      = "SecureString"
  key_id = "7a96f332-25cc-4f74-8991-bfc6694ad974"
}