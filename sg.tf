resource "aws_security_group" "allow_tls" { 
  name        = "allow_tls" 
  description = "Allow TLS inbound traffic" 
  vpc_id      = "vpc-0ff211dbd72c859c7"

  ingress { 
    from_port   = 22 
    to_port     = 22 
    protocol    = "tcp" 
    cidr_blocks = ["0.0.0.0/0"]   

} 

egress { 
    from_port       = 0 
    to_port         = 0 
    protocol        = "-1" 
    cidr_blocks     = ["0.0.0.0/0"] 
  } 
} 