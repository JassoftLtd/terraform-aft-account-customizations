
resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.small"
  subnet_id = data.aws_subnets.private[0].id

  key_name = "JonTak"

#  user_data = ""

  user_data_replace_on_change = true
}