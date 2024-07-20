## Ec2 instance and web server 
resource "aws_instance" "web-1a" { 

ami = "ami-03bb6d83c60fc5f7c"
instance_type = "t2.small"
subnet_id = aws_subnet.web-pub-1a.id
key_name = "Mumbairegion"
security_groups = [aws_security_group.web_server_sg_tf.id]
count = 1


#lifecycle {
 # ignore_changes = [ ami,instance_type ,security_groups]
  
#}
tags = {
  Name = "web_server-1a"
}
}

