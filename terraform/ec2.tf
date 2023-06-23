resource "aws_instance" "web" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"
  
  network_interface {
    network_interface_id = "eni-03ca139c4a0c50cfe"
    device_index = 0
  }

  tags = {
    Name = "arber-${var.enviroment}"
  }
}