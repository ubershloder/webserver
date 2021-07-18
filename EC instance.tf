
resource "aws_instance" "exp" {
  ami                         = "ami-05f7491af5eef733a"
  instance_type               = "t2.micro"
  key_name                    = "random"
  associate_public_ip_address = true
  vpc_security_group_ids      = ["sg-0e753b2bf658155d5"]
  monitoring                  = true
user_data =     << EOF
		#! /bin/bash
                sudo apt-get update -y
                sudo apt-get upgrade -y
                sudo apt install curl -y
                curl https://get.docker.com | sh
                docker container run -d ubersholder/cidocker:1
	EOF

  tags = {
    Name = "Exp"
  }

}
