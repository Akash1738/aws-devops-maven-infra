resource "aws_instance" "web_server" {
  ami           = "ami-0b6c6ebed2801a5cb"
  instance_type = "t3.micro"

  subnet_id              = subnet-0540b1bb805beecbb
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  tags = {
    Name = "DevOps-Server"
  }
}
