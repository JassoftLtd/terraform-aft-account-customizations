
resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"
  subnet_id     = element(data.aws_subnets.private.ids, 0)

  key_name = "JonTak"

#  user_data = ""

  user_data_replace_on_change = true

  tags = {
    Name = "FreeTAKServer"
  }
}