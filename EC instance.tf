
resource "aws_instance" "exp" {
  ami                         = "ami-05f7491af5eef733a"
  instance_type               = "t2.micro"
  key_name                    = "random"
  associate_public_ip_address = true
  vpc_security_group_ids      = ["sg-0e753b2bf658155d5"]
  monitoring                  = true
  tags = {
    Name = "Exp"
  }

}
